//
//  ProjectsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Проекты
class ProjectsVC: UIViewController {

    //MARK: Properties
    private let customNavigationBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blackCostum
        return view
    }()
    
    private let logoJS: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "JScorplogos1blue")
        img.image = image
        return img
    }()
    
    private let pushMenu: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "19PushMenuB")
        img.image = image
        return img
    }()
    
    private var menuImg: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "21Menu")
        img.image = image
        
        return img
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(customNavigationBar)
        self.customNavigationBar.addSubview(pushMenu)
        self.customNavigationBar.addSubview(logoJS)
        self.customNavigationBar.addSubview(menuImg)
        
        anchorConstraint()
        customView()
        tappedIsImg()
        
    }
    
    //MARK: Methods
    private func tappedIsImg() {
        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(tappedIsMenu(_:)))
        self.menuImg.addGestureRecognizer(tapMenu)
        self.menuImg.isUserInteractionEnabled = true
        
        let tapPush = UITapGestureRecognizer(target: self, action: #selector(tappedIsPushMenu(_:)))
        self.pushMenu.addGestureRecognizer(tapPush)
        self.pushMenu.isUserInteractionEnabled = true
    }
    
    private func customView() {
        self.view.backgroundColor = UIColor.white
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Objc Methods
    @objc func tappedIsMenu(_ sender: AnyObject) {
        print("press button image menu")
    }
    
    @objc func tappedIsPushMenu(_ sender: AnyObject) {
        print("press button image push menu")
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Custom Navigation Bar
        self.customNavigationBar.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.customNavigationBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.customNavigationBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.customNavigationBar.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        //Logo
        self.logoJS.heightAnchor.constraint(equalToConstant: 70).isActive = true
        self.logoJS.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.logoJS.leadingAnchor.constraint(equalTo: self.customNavigationBar.leadingAnchor, constant: 12).isActive = true
        self.logoJS.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -7).isActive = true
        
        //Menu
        self.menuImg.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.menuImg.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.menuImg.trailingAnchor.constraint(equalTo: self.customNavigationBar.trailingAnchor, constant: -12).isActive = true
        self.menuImg.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -22).isActive = true
        
        //Push menu
        self.pushMenu.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.pushMenu.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.pushMenu.trailingAnchor.constraint(equalTo: self.menuImg.leadingAnchor, constant: -12).isActive = true
        self.pushMenu.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -22).isActive = true
        
    }

}
