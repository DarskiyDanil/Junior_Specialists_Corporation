//
//  ProfileSkillsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 01/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ProfileSkillsVC: UIViewController {

    //MARK: Properties
    private let profileSkillsLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Профильные навыки:"
        return lbl
    }()
    
    private let webDesignFirst: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Web-design", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsWebFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()

    private let managementFirst: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Management", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsManagFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()

    private let startupsFirst: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Startups", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsStartFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let webDesignSecond: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Веб-дизайн", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsWebSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()

    private let managementSecond: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Менеджмент", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsManagSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()

    private let startupsSecond: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Стартапы", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsStartSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    var webFirst: Bool!
    var webSecond: Bool!
    var managFirst: Bool!
    var managSecond: Bool!
    var startFirst: Bool!
    var startSecond: Bool!

    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(profileSkillsLabel)
        self.view.addSubview(webDesignFirst)
        self.view.addSubview(webDesignSecond)
        self.view.addSubview(managementFirst)
        self.view.addSubview(managementSecond)
        self.view.addSubview(startupsFirst)
        self.view.addSubview(startupsSecond)
        
        webFirst = false
        webSecond = false
        managFirst = false
        managSecond = false
        startFirst = false
        startSecond = false
        
        //other methods
        anchorConstraint()
    }
    
    //MARK: Methods
    
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        
    }
    
    @objc func tappedIsWebFirst() {
        webFirst = !webFirst
        if webFirst == true {
            webDesignFirst.backgroundColor = UIColor.cyanCustom
            webDesignFirst.setTitleColor(UIColor.snowCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsWebSecond() {
        webSecond = !webSecond
        if webSecond == true {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.cyanCustom
            webDesignSecond.setTitleColor(UIColor.snowCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsManagFirst() {
        webSecond = !webSecond
        if webSecond == true {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.cyanCustom
            managementFirst.setTitleColor(UIColor.snowCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsManagSecond() {
        webSecond = !webSecond
        if webSecond == true {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.cyanCustom
            managementSecond.setTitleColor(UIColor.snowCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsStartFirst() {
        webSecond = !webSecond
        if webSecond == true {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.cyanCustom
            startupsFirst.setTitleColor(UIColor.snowCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsStartSecond() {
        webSecond = !webSecond
        if webSecond == true {
            webDesignFirst.backgroundColor = UIColor.snowCustom
            webDesignFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            webDesignSecond.backgroundColor = UIColor.snowCustom
            webDesignSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementFirst.backgroundColor = UIColor.snowCustom
            managementFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            managementSecond.backgroundColor = UIColor.snowCustom
            managementSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsFirst.backgroundColor = UIColor.snowCustom
            startupsFirst.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            startupsSecond.backgroundColor = UIColor.cyanCustom
            startupsSecond.setTitleColor(UIColor.snowCustom, for: .normal)
        } else {
            startupsSecond.backgroundColor = UIColor.snowCustom
            startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //profile skills label
        self.profileSkillsLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.profileSkillsLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.profileSkillsLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.profileSkillsLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
       
        //web design first
        self.webDesignFirst.topAnchor.constraint(equalTo: self.profileSkillsLabel.bottomAnchor, constant: 10).isActive = true
        self.webDesignFirst.leadingAnchor.constraint(equalTo: self.profileSkillsLabel.leadingAnchor).isActive = true
        self.webDesignFirst.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.webDesignFirst.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //web design second
        self.webDesignSecond.topAnchor.constraint(equalTo: self.webDesignFirst.topAnchor).isActive = true
        self.webDesignSecond.leadingAnchor.constraint(equalTo: self.webDesignFirst.trailingAnchor, constant: 10).isActive = true
        self.webDesignSecond.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.webDesignSecond.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //management first
        self.managementFirst.topAnchor.constraint(equalTo: self.webDesignFirst.bottomAnchor, constant: 10).isActive = true
        self.managementFirst.leadingAnchor.constraint(equalTo: self.webDesignFirst.leadingAnchor).isActive = true
        self.managementFirst.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.managementFirst.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //management second
        self.managementSecond.topAnchor.constraint(equalTo: self.managementFirst.topAnchor).isActive = true
        self.managementSecond.leadingAnchor.constraint(equalTo: self.managementFirst.trailingAnchor, constant: 10).isActive = true
        self.managementSecond.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.managementSecond.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //startups first
        self.startupsFirst.topAnchor.constraint(equalTo: self.managementFirst.bottomAnchor, constant: 10).isActive = true
        self.startupsFirst.leadingAnchor.constraint(equalTo: self.webDesignFirst.leadingAnchor).isActive = true
        self.startupsFirst.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.startupsFirst.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //startups second
        self.startupsSecond.topAnchor.constraint(equalTo: self.startupsFirst.topAnchor).isActive = true
        self.startupsSecond.leadingAnchor.constraint(equalTo: self.startupsFirst.trailingAnchor, constant: 10).isActive = true
        self.startupsSecond.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.startupsSecond.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
