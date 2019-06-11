//
//  MyProfileVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Мой профиль
class MyProfileVC: UIViewController {
    
    //MARK: Properties
    var customNavigationBar: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCustomBar()
    }
    
    func configCustomBar() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
    }
    
    //MARK: Methods
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    //MARK: Objc Methods

    //MARK: Constrains

}
