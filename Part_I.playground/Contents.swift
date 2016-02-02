//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let numbers = [100, 5, 44, 45, 12, 2, 5, 88, 33, 1];

for number in numbers {
    number;
}


for counter in 1...100 {
    sin(Double(counter) / 2);
}


XCPlaygroundPage.currentPage.captureValue(numbers, withIdentifier: "Numbers")

