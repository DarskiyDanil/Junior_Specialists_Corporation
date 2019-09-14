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
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()

    private let managementFirst: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()

    private let startupsFirst: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let webDesignSecond: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()

    private let managementSecond: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()

    private let startupsSecond: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let customButton = CustomButton()

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
        
        //other methods
        anchorConstraint()
        createByCustomButton()
    }
    
    //MARK: Methods
    private func createByCustomButton() {
        customButton.optionCustomButtonSecond(sender: webDesignFirst, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Web-design", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
        customButton.optionCustomButtonSecond(sender: webDesignSecond, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Веб-дизайн", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
        customButton.optionCustomButtonSecond(sender: managementFirst, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Management", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
        customButton.optionCustomButtonSecond(sender: managementSecond, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Менеджмент", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
        customButton.optionCustomButtonSecond(sender: startupsFirst, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Startups", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
        customButton.optionCustomButtonSecond(sender: startupsSecond, viewColor: UIColor.snowCustom, cornerRadius: 5, borderWidth: 0.5, borderColor: UIColor.smokeCustom,
                                              titleLabel: "Стартапы", titleColor: UIColor.cyanCustom, widthAnchor: 180, heigthAnchor: 30)
    }
    
    private func allButtonWhite() {
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
        
        startupsSecond.backgroundColor = UIColor.snowCustom
        startupsSecond.setTitleColor(UIColor.cyanCustom, for: .normal)
    }
    
    //MARK: Objc methods
    @objc func selectAnOptionFromTheListed(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Web-design":
            allButtonWhite()
            webDesignFirst.backgroundColor = UIColor.cyanCustom
            webDesignFirst.setTitleColor(UIColor.snowCustom, for: .normal)
        case "Management":
            allButtonWhite()
            managementFirst.backgroundColor = UIColor.cyanCustom
            managementFirst.setTitleColor(UIColor.snowCustom, for: .normal)
        case "Startups":
            allButtonWhite()
            startupsFirst.backgroundColor = UIColor.cyanCustom
            startupsFirst.setTitleColor(UIColor.snowCustom, for: .normal)
        case "Веб-дизайн":
            allButtonWhite()
            webDesignSecond.backgroundColor = UIColor.cyanCustom
            webDesignSecond.setTitleColor(UIColor.snowCustom, for: .normal)
        case "Менеджмент":
            allButtonWhite()
            managementSecond.backgroundColor = UIColor.cyanCustom
            managementSecond.setTitleColor(UIColor.snowCustom, for: .normal)
        case "Стартапы":
            allButtonWhite()
            startupsSecond.backgroundColor = UIColor.cyanCustom
            startupsSecond.setTitleColor(UIColor.snowCustom, for: .normal)
        default:
            break
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
        
        //web design second
        self.webDesignSecond.topAnchor.constraint(equalTo: self.webDesignFirst.topAnchor).isActive = true
        self.webDesignSecond.leadingAnchor.constraint(equalTo: self.webDesignFirst.trailingAnchor, constant: 10).isActive = true
        
        //management first
        self.managementFirst.topAnchor.constraint(equalTo: self.webDesignFirst.bottomAnchor, constant: 10).isActive = true
        self.managementFirst.leadingAnchor.constraint(equalTo: self.webDesignFirst.leadingAnchor).isActive = true
        
        //management second
        self.managementSecond.topAnchor.constraint(equalTo: self.managementFirst.topAnchor).isActive = true
        self.managementSecond.leadingAnchor.constraint(equalTo: self.managementFirst.trailingAnchor, constant: 10).isActive = true
        
        //startups first
        self.startupsFirst.topAnchor.constraint(equalTo: self.managementFirst.bottomAnchor, constant: 10).isActive = true
        self.startupsFirst.leadingAnchor.constraint(equalTo: self.webDesignFirst.leadingAnchor).isActive = true
        
        //startups second
        self.startupsSecond.topAnchor.constraint(equalTo: self.startupsFirst.topAnchor).isActive = true
        self.startupsSecond.leadingAnchor.constraint(equalTo: self.startupsFirst.trailingAnchor, constant: 10).isActive = true
    }
}
