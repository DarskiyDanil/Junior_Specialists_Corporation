//
//  SettingsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 10/08/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Настройки
class SettingsVC: UIViewController {

    //MARK: Properties
    var customNavigationBar: UIViewController!
    var disabledWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCustomInformationView()
        
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        
        disabledWindow = DisabledWindowVC()
        view.insertSubview(disabledWindow.view, at: 0)
        addChild(disabledWindow)
        
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
