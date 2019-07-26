//
//  FullTitleOfMyProjectWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 26/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class FullTitleOfMyProjectWindowVC: UIViewController {

    //MARK: Properties
    private var avatar: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        return img
    }()
    
    private let thirdName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "International"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let firstName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Science"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let lastName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Hub"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let chief: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Руководитель:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let chiefTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Зырянов Денис"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let webSite: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Web-site:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let webSiteTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "123.ru"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let team: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Команда:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let teamTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "16 человек"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let direction: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Направление:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let directionTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "TechNet"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let productStage: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Стадия продукта:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let productStageTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Концепция"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        createdByView()
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        //other methods
        anchorConstraint()
    }
    
    //MARK: Methods
    private func createdByView() {
        self.view.addSubview(avatar)
        self.view.addSubview(thirdName)
        self.view.addSubview(firstName)
        self.view.addSubview(lastName)
        self.view.addSubview(chief)
        self.view.addSubview(chiefTitle)
        self.view.addSubview(webSite)
        self.view.addSubview(webSiteTitle)
        self.view.addSubview(team)
        self.view.addSubview(teamTitle)
        self.view.addSubview(direction)
        self.view.addSubview(directionTitle)
        self.view.addSubview(productStage)
        self.view.addSubview(productStageTitle)
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        //avatar
        self.avatar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.avatar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.avatar.widthAnchor.constraint(equalToConstant: 130).isActive = true
        self.avatar.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        //thirdName
        self.thirdName.topAnchor.constraint(equalTo: self.avatar.topAnchor).isActive = true
        self.thirdName.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.thirdName.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //first name
        self.firstName.topAnchor.constraint(equalTo: self.thirdName.topAnchor).isActive = true
        self.firstName.leadingAnchor.constraint(equalTo: self.thirdName.trailingAnchor, constant: 10).isActive = true
        self.firstName.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        //last name
        self.lastName.topAnchor.constraint(equalTo: self.thirdName.topAnchor).isActive = true
        self.lastName.leadingAnchor.constraint(equalTo: self.firstName.trailingAnchor, constant: 10).isActive = true
        self.lastName.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        //chief
        self.chief.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.chief.bottomAnchor.constraint(equalTo: self.webSite.topAnchor, constant: -1).isActive = true
        self.chief.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        //character title
        self.chiefTitle.leadingAnchor.constraint(equalTo: self.chief.trailingAnchor, constant: 10).isActive = true
        self.chiefTitle.bottomAnchor.constraint(equalTo: self.chief.bottomAnchor).isActive = true
        self.chiefTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //webSite
        self.webSite.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.webSite.bottomAnchor.constraint(equalTo: self.team.topAnchor, constant: -1).isActive = true
        self.webSite.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        //birthday data
        self.webSiteTitle.leadingAnchor.constraint(equalTo: self.webSite.trailingAnchor, constant: 10).isActive = true
        self.webSiteTitle.bottomAnchor.constraint(equalTo: self.webSite.bottomAnchor).isActive = true
        self.webSiteTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //team
        self.team.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.team.bottomAnchor.constraint(equalTo: self.direction.topAnchor, constant: -1).isActive = true
        self.team.widthAnchor.constraint(equalToConstant: 75).isActive = true
        
        //telephone number
        self.teamTitle.leadingAnchor.constraint(equalTo: self.team.trailingAnchor, constant: 10).isActive = true
        self.teamTitle.bottomAnchor.constraint(equalTo: self.team.bottomAnchor).isActive = true
        self.teamTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //direction
        self.direction.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.direction.bottomAnchor.constraint(equalTo: self.productStage.topAnchor, constant: -1).isActive = true
        self.direction.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        //email address
        self.directionTitle.leadingAnchor.constraint(equalTo: self.direction.trailingAnchor, constant: 10).isActive = true
        self.directionTitle.bottomAnchor.constraint(equalTo: self.direction.bottomAnchor).isActive = true
        self.directionTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //productStage
        self.productStage.bottomAnchor.constraint(equalTo: self.avatar.bottomAnchor).isActive = true
        self.productStage.leadingAnchor.constraint(equalTo: self.thirdName.leadingAnchor).isActive = true
        self.productStage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        //vk address
        self.productStageTitle.bottomAnchor.constraint(equalTo: self.avatar.bottomAnchor).isActive = true
        self.productStageTitle.leadingAnchor.constraint(equalTo: self.productStage.trailingAnchor, constant: 7).isActive = true
        self.productStageTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
    }
}
