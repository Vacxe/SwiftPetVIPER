//
//  BasePresenter.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 17.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

public class BasePresenter<V> {
    var view: V?

    public func setVew(view: V) {
        self.view = view
    }

    public func dropView() {
        self.view = nil
    }

    public func getView() -> V? {
        return view
    }
}
