//
//  CarModel.swift
//  MVVMDemo
//
//  Created by Rahul Umap on 05/09/17.
//  Copyright © 2017 Rahul Umap. All rights reserved.
//

import Foundation
class Car {
    var model: String?
    var make: String?
    var horsepower: Int?
    var photoURL: String?

    init(model: String, make: String, horsepower: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.horsepower = horsepower
        self.photoURL = photoURL
    }
}
