//
//  LoadImageViewController.swift
//  FirstPetProject
//
//  Created by Константин Аксенов on 27.03.17.
//  Copyright © 2017 Константин Аксенов. All rights reserved.
//

import UIKit
import Kingfisher

class LoadImageViewController: UIViewController, LoadImageViewProtocol {
    
    let presenter : LoadImageViewPresenter = LoadImageViewPresenter()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.kf.setImage(with: URL(string :"https://avatars0.githubusercontent.com/u/2812510?v=3&s=460"))
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        presenter.setVew(view: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.dropView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func setScaleFactor(scaleFactor : Float){
      
    }
    
   
    @IBAction func releaseCliked(_ sender: Any) {
        presenter.onRelease()
    }
    
    @IBAction func pushClicked(_ sender: Any) {
        presenter.onPush()
    }
    
}
