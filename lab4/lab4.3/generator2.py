#!/usr/bin/env python3

########################################################################################
# This is a skeleton planning problem instance generator
# for the UAV domain in the TDDD48 Automated Planning course.
# Ask your lab assistant if you have any questions.
#
# The intention is that we provide a number of functions
# to help you *IF* you want to create a problem generator.
# The course does not require you to do so and you are free
# to define problem instances manually if you prefer.
#
# You mainly have to change the parts marked as TODO.
#
# The problem generator skeleton is written in Python, because
# it is a reasonably modern language that does not require
# a tedious compilation phase, etc.
#
# If you haven't used Python before, don't worry: Neither had we
# (a number of years ago)
# IMPORTANT: Python is sensitive to indentation!
# The body of a for loop is indented, for example.
#
########################################################################################


from optparse import OptionParser
import random
import math
import sys

########################################################################################
# Hard-coded options
########################################################################################

# Crates will have different contents, such as food and medicine.
# You can change this to generate other contents if you want.
from typing import List, Tuple

content_types = ["food", "medicine", "water"]


########################################################################################
# Random seed
########################################################################################


# Set seed to a constant for more predictability...
# (Should be random, but should still generate the same output
#  if executed again with the same parameters)
random.seed(42);

########################################################################################
# Helper functions
########################################################################################

# We associate each location with x/y coordinates.  These coordinates
# won't actually be used explicitly in the domain, but we *will*
# eventually use them implicitly by using *distances* in order to
# calculate flight times.
#
# This function returns the euclidean distance between two locations.
# The locations are given via their integer index.  You won't have to
# use this other than indirectly through the flight cost function.
def distance(location_coords, location_num1: int, location_num2: int):
    x1 = location_coords[location_num1][0]
    y1 = location_coords[location_num1][1]
    x2 = location_coords[location_num2][0]
    y2 = location_coords[location_num2][1]
    return math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)


# This function returns the action cost of flying between two
# locations supplied by their integer indexes.  You can use this
# function when you extend the problem generator to generate action
# costs.
def flight_cost(location_coords, location_num1: int, location_num2: int):
    return int(distance(location_coords, location_num1, location_num2)) + 1


# When you run this script you specify the *total* number of crates
# you want.  The function below determines randomly which crates
# will have a specific type of contents.  crates_with_contents[0]
# is a list of crates containing content_types[0] (in our
# example "food"), and so on.
# Note: Will have at least one crate per type!

def setup_content_types(options):
    while True:
        num_crates_with_contents = []
        crates_left = options.crates
        for x in range(len(content_types) - 1):
            types_after_this = len(content_types) - x - 1
            max_now = crates_left - types_after_this
            # print x, types_after_this, crates_left, len(content_types), max_now
            num = random.randint(1, max_now)
            # print num
            num_crates_with_contents.append(num)
            crates_left -= num
        num_crates_with_contents.append(crates_left)
        # print(num_crates_with_contents)

        # If we have 10 medicine and 4 food, with 7 people,
        # we can support at most 7+4=11 goals.
        maxgoals = sum(min(num_crates, options.persons) for num_crates in num_crates_with_contents)

        # Check if the randomization supports the number of goals we want to generate.
        # Otherwise, try to randomize again.
        if options.goals <= maxgoals:
            # Done
            break

    print()
    print("Types\tQuantities")
    for x in range(len(num_crates_with_contents)):
        if num_crates_with_contents[x] > 0:
            print(content_types[x] + "\t " + str(num_crates_with_contents[x]))

    crates_with_contents = []
    counter = 1
    for x in range(len(content_types)):
        crates = []
        for y in range(num_crates_with_contents[x]):
            crates.append("crate" + str(counter))
            counter += 1
        crates_with_contents.append(crates)

    return crates_with_contents


# This function populates the location_coords list with an X and Y
# coordinate for each location.  You won't have to use this other than
# indirectly through the flight cost function.
def setup_location_coords(options):
    location_coords = [(0, 0)]  # For the depot
    for x in range(1, options.locations + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))

    print("Location positions", location_coords)
    return location_coords


# This function generates a random set of goals.
# After you run this, need[personid][contentid] is true if and only if
# the goal is for the person to have a crate with the specified content.
# You will use this to create goal statements in PDDL.
def setup_person_needs(options, crates_with_contents):
    need: list[list[bool]] = [[False for i in range(len(content_types))] for j in range(options.persons)]
    goals_per_contents: list[int] = [0 for i in range(len(content_types))]

    for goalnum in range(options.goals):

        generated = False
        while not generated:
            rand_person: int = random.randint(0, options.persons - 1)
            rand_content: int = random.randint(0, len(content_types) - 1)
            # If we have enough crates with that content
            # and the person doesn't already need that content
            if (goals_per_contents[rand_content] < len(crates_with_contents[rand_content])
                    and not need[rand_person][rand_content]):
                need[rand_person][rand_content] = True
                goals_per_contents[rand_content] += 1
                generated = True
    return need


########################################################################################
# Main program
########################################################################################

def main():
    # Take in all arguments and print them to standard output

    parser = OptionParser(usage='python generator.py [-help] options...')
    parser.add_option('-u', '--uavs', metavar='NUM', dest='uavs', action='store', type=int, help='the number of UAVs')
    parser.add_option('-r', '--carriers', metavar='NUM', type=int, dest='carriers',
                      help='the number of carriers, for later labs; use 0 for no carriers')
    parser.add_option('-l', '--locations', metavar='NUM', type=int, dest='locations',
                      help='the number of locations apart from the depot ')

    

    (options, args) = parser.parse_args()

    if options.uavs is None:
        print("You must specify --uavs (use --help for help)")
        sys.exit(1)

    if options.carriers is None:
        print("You must specify --carriers (use --help for help)")
        sys.exit(1)

    if options.locations is None:
        print("You must specify --locations (use --help for help)")
        sys.exit(1)


    print("UAVs\t\t", options.uavs)
    print("Carriers\t", options.carriers)
    print("Locations\t", options.locations)


    # Set up all lists of objects

    # These lists contain the names of all UAVs, locations, and so on.

    uav: list[str] = []
    carrier: list[str] = []
    location: list[str] = []

    number.append("n0")
    location.append("depot")
    for objname in range(options.locations):
        location.append("loc" + str(objname + 1))
    for objname in range(options.uavs):
        uav.append("uav" + str(objname + 1))
    for objname in range(options.carriers):
        carrier.append("carrier" + str(objname + 1))

    # Determine the set of crates for each content.
    # If content_types[0] is "food",
    # then crates_with_contents[0] is a list
    # containing the names of all crates that contain food.
    crates_with_contents: list[list[str]] = setup_content_types(options)

    # Generates coordinates for each location.
    # You will only use this indirectly,
    # through the flight_cost() function in lab 2.
    location_coords: list[tuple[int, int]] = setup_location_coords(options)

    # Determine which types of content each person needs.
    # If person[0] is "person0",
    # and content_types[1] is "medicine",
    # then needs[0][1] is true iff person0 needs medicine.
    need: list[list[bool]] = setup_person_needs(options, crates_with_contents)

    # Define a problem name
    problem_name = "uav_problem_u" + str(options.uavs) + "_r" + str(options.carriers) + \
                   "_l" + str(options.locations) + "_ct" + str(len(content_types))

    # Open output file
    with open(problem_name + ".pddl", 'w') as f:
        # Write the initial part of the problem

        f.write("(define (problem " + problem_name + ")\n")
        f.write("(:domain uav-domain)\n")
        f.write("(:objects\n")

        ######################################################################
        # Write objects

        # TODO: Change the type names below (uav, location, ...)
        # to suit your domain.

        for objname in uav:
            f.write("\t" + objname + " - uav\n")

        for objname in location:
            f.write("\t" + objname + " - location\n")

        for objname in content_types:
            f.write("\t" + objname + " - contents\n")

        for objname in carrier:
            f.write("\t" + objname + " - carrier\n")
        

        f.write(")\n")

        ######################################################################
        # Generate an initial state

        f.write("(defproblem problem domain\n")
        f.write("( \n")
        # TODO: Initialize all facts here!


        for loc in range(len(location)):
            f.write("\t" + location[loc] + ")\n")

        for types in range(len(content_types)):
            for c in crates_with_contents[types]:
                f.write("\t" + "(at " + c + " " + "depot)\n")
                f.write("\t" + "(contains " + c + " " + 
                        content_types[types] + ")\n")
                f.write("\t" + "(available " + c + ")\n")

        
        #not sure if we want the UAV to start in depot..
        for u in uav:
            f.write("\t" + "(at " + u + " depot)\n")
            f.write("\t" + "(free " + u + ")\n")

        for c in carrier:
            f.write("\t" + "(at " + c + " depot)\n")
            f.write("\t" + "(capacity " + c + " 4"+ ")\n")
            f.write("\t" + "(load " + c + " 0)\n")


        f.write(")\n")

        ######################################################################
        # Write Goals

        f.write("(\n")
        
        f.write("\t((deliver-all))\n")

        f.write("\t))\n")



if __name__ == '__main__':
    main()
