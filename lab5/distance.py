#!/usr/bin/env python3
from sys import argv
from math import pi


def calc_distance(c1, c2):
    dist = ((c1[0] - c2[0])**2 + (c1[1] - c2[1])**2)**0.5
    rotation_dist = abs(c1[2] - c2[2]) % pi
    rotation_dist = min(rotation_dist, pi - rotation_dist)
    return (dist, rotation_dist)


def calc_path_dist(coords):
    prev = coords[0]
    dist = (0, 0)
    for coord in coords[1:]:
        d, r = calc_distance(prev, coord)
        dist = dist[0] + d, dist[1] + r
        prev = coord
    return dist

if __name__ == "__main__":
    if len(argv) != 2:
        print("Usage: ./dist_calculator.py <path_file>")
    with open(argv[1]) as f:
        lines = f.readlines()
        coords = [[float(c) for c in line.split(" ")] for line in lines]
        c = calc_path_dist(coords)
        print("Distance: " + str(c[0]))
        print("Total rotation (radians): " + str(c[1]))