//
//  EntranceVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Вход
class EntranceVC: UIViewController {
    
    //MARK: Properties
    private let logoMops: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "MopsLogo")
        img.image = image
        return img
    }()
    
    private let logoJSGrey: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "JScorplogos1grey")
        img.image = image
        return img
    }()
    
    var customEntranceView: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(logoMops)
        self.view.addSubview(logoJSGrey)
        
        //other methods
        anchorConstraint()
        configCustomEntranceView()
    }
    
    //MARK: Methods
    func configCustomEntranceView() {
        customEntranceView = EntranceWindowVC()
        view.insertSubview(customEntranceView.view, at: 0)
        addChild(customEntranceView)
    }
   
    //MARK: Objc methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Logo Mops
        self.logoMops.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoMops.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        self.logoMops.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoMops.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        //Logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
       
    }
}
