//
//  App.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation
import Swinject

public final class App {

    static let instance: App = App()
    let container = Container()
    
    var repository : Repository{
        return self.container.resolve(Repository.self)!
    }
 
    private init() {
        container.register(DataStore.self) { _ in ProductionDataStore() }
        container.register(Repository.self) {r in
            ProductionRepository(dataStore: r.resolve(DataStore.self)!)
        }.inObjectScope(.container)
    }

    public func getRepository() -> Repository {
        return repository
    }
}
