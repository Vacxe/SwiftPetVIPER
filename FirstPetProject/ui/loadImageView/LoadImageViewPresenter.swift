//
//  LoadImageViewPresenter.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 27.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation
class LoadImageViewPresenter: BasePresenter<LoadImageViewProtocol>, LoadImagePresenterProtocol {

    override init() {
        super.init()
    }
    
    
    func onPush(){
        print("onPush")
    }
    
    
    func onRelease(){
        print("onRelease")
    }
    
}
    


