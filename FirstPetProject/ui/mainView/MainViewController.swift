//
//  MainViewController.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 21.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewProtocol {

    @IBOutlet weak var myButton: UIButton!
    
    let presenter : MainViewPresenter = MainViewPresenter(
        incrementInteractor: IncrementInteractor())
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }    

    override func viewDidAppear(_ animated: Bool) {
        presenter.setVew(view: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.dropView()
    }
    
    @IBAction func onButtonClick(_ sender: Any) {
        presenter.buttonClicked()
    }
    
    @IBAction func openLoadImageView(_ sender: Any) {
        let loadImageViewController : UIViewController = LoadImageViewController()
        self.present(loadImageViewController, animated: true) { 
            
        }
    }
    
    func setButtonName(name: String) {
        myButton.setTitle(name, for: .normal)
    }

}
