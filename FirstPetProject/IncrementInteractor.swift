//
//  IncrementInteractor.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 20.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

class IncrementInteractor : Interactor{
    typealias R = Int
    typealias T = Int
    
    public func execute(value: Int) -> Int {
        var count : Int =  App.instance.getRepository().getCount()
        count = count + 1
        App.instance.getRepository().setCount(value: count)
        return count
    }
}
