//
//  DataStore.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

public protocol DataStore {
    func setValue(value : Int)
    func getValue() -> Int
}
