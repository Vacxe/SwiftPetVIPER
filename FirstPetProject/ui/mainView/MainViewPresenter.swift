//
//  MainViewPresenter.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 17.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation

public class MainViewPresenter<CountIncrementInteractor:Interactor>: BasePresenter<MainViewProtocol>, MainPresenterProtocol
        where CountIncrementInteractor.T == Int,
        CountIncrementInteractor.R == Int {

    var count = 0
    var incrementInteractor: CountIncrementInteractor

    init(incrementInteractor: CountIncrementInteractor) {
        self.incrementInteractor = incrementInteractor
    }

    public func buttonClicked() {
        count = incrementInteractor.execute(value: count)
        getView()?.setButtonName(name: "Counter is " + String(count))
    }

}

