import Foundation
import Glibc
//
//  ConsoleInput.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the volume of a sphere.


// Getting the radius
print("Enter the radius of your sphere below:")

if let radius = Double(readLine()!) {
    // Deciding what to output
    if (radius < 0) {
        print("Sorry but the radius can't be negative.")
    } else {
        // Doing the math.
        let volume = (4 * Double.pi * (pow(radius, 3))) / 3
        // rounding to 2 decimal places
        let rounded = Double(round(100 * volume) / 100)
        print("The volume of your sphere is \(rounded)cm^3")
    }
} else {
    print("Please enter a valid radius")
}