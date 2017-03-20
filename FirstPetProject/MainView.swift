//
//  MainView.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 17.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import Foundation
import UIKit

public class MainView : UIViewController, MainViewProtocol {
    let presenter = MainViewPresenter(incrementInteractor: IncrementInteractor())
    var firstButton : UIButton?
    var progressView : UIProgressView?
    
    
    public override func viewDidLoad() {
        presenter.setVew(view: self)
        firstButton = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 50))
        firstButton?.setTitle("Button", for: .normal)
        firstButton?.backgroundColor = UIColor.red
        firstButton?.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(firstButton!)
       
        progressView = UIProgressView(frame: CGRect(x: 20, y: 20, width: 100, height: 50))
        
        progressView?.progress = 0.5
        self.view.addSubview(progressView!)
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        presenter.dropView()
    }
    
    
    func buttonClicked() {
       presenter.buttonClicked()
    }
    
    public func setButtonName(name : String){
        firstButton?.setTitle(name, for: .normal)
    }
    
}
