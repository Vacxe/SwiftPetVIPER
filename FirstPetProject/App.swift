//
//  App.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

public final class App{
    
    static let instance : App = App()
    private let dataStore : DataStore
    private let repository : Repository
    
    private init(){
        dataStore = ProductionDataStore()
        repository = ProductionRepository(dataStore: dataStore)
    }
    
    public func getRepository() -> Repository{
        return self.repository
    }
}
