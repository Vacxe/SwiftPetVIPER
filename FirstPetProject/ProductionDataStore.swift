//
//  ProductionDataStore.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation


public class ProductionDataStore : DataStore{
    
    private var count : Int = 0
    
    public func getValue() -> Int {
        return count
    }
    
    public func setValue(value: Int) {
        self.count = value
    }
}
