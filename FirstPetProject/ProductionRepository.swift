//
//  ProductionRepository.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

public class ProductionRepository : Repository{    
    let dataStore : DataStore
    
    init(dataStore : DataStore) {
        self.dataStore = dataStore
    }
    
    public func getCount() -> Int {
        return dataStore.getValue()
    }
    
    public func setCount(value: Int) {
        dataStore.setValue(value: value)
    }
}
