//
//  ProfileWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ProfileWindowVC: UIViewController {

    //MARK: Properties
    private var avatar: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        return img
    }()
    
    private let family: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Фамилия"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let firstName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Имя"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let lastName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Отчество"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let character: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Роль:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let characterTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Основатель."
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let birthday: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Дата рождения:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let birthdayData: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "01.01.0001"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let telephone: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Телефон:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let telephoneNumber: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "+7 (901) 001 01 01"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let email: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Email:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let emailAddress: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "email@mail.ru"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let vk: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "VK:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let vkAddress: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "vkAddress@vk.com"
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
        self.view.addSubview(family)
        self.view.addSubview(firstName)
        self.view.addSubview(lastName)
        self.view.addSubview(character)
        self.view.addSubview(characterTitle)
        self.view.addSubview(birthday)
        self.view.addSubview(birthdayData)
        self.view.addSubview(telephone)
        self.view.addSubview(telephoneNumber)
        self.view.addSubview(email)
        self.view.addSubview(emailAddress)
        self.view.addSubview(vk)
        self.view.addSubview(vkAddress)
        
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        //avatar
        self.avatar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.avatar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.avatar.widthAnchor.constraint(equalToConstant: 130).isActive = true
        self.avatar.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        //family
        self.family.topAnchor.constraint(equalTo: self.avatar.topAnchor).isActive = true
        self.family.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.family.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //first name
        self.firstName.topAnchor.constraint(equalTo: self.family.topAnchor).isActive = true
        self.firstName.leadingAnchor.constraint(equalTo: self.family.trailingAnchor, constant: 10).isActive = true
        self.firstName.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        //last name
        self.lastName.topAnchor.constraint(equalTo: self.family.topAnchor).isActive = true
        self.lastName.leadingAnchor.constraint(equalTo: self.firstName.trailingAnchor, constant: 10).isActive = true
        self.lastName.widthAnchor.constraint(equalToConstant: 85).isActive = true
        
        //character
        self.character.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.character.bottomAnchor.constraint(equalTo: self.birthday.topAnchor, constant: -1).isActive = true
        self.character.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        //character title
        self.characterTitle.leadingAnchor.constraint(equalTo: self.character.trailingAnchor, constant: 10).isActive = true
        self.characterTitle.bottomAnchor.constraint(equalTo: self.character.bottomAnchor).isActive = true
        self.characterTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //birthday
        self.birthday.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.birthday.bottomAnchor.constraint(equalTo: self.telephone.topAnchor, constant: -1).isActive = true
        self.birthday.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        //birthday data
        self.birthdayData.leadingAnchor.constraint(equalTo: self.birthday.trailingAnchor, constant: 10).isActive = true
        self.birthdayData.bottomAnchor.constraint(equalTo: self.birthday.bottomAnchor).isActive = true
        self.birthdayData.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //telephone
        self.telephone.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.telephone.bottomAnchor.constraint(equalTo: self.email.topAnchor, constant: -1).isActive = true
        self.telephone.widthAnchor.constraint(equalToConstant: 75).isActive = true
        
        //telephone number
        self.telephoneNumber.leadingAnchor.constraint(equalTo: self.telephone.trailingAnchor, constant: 10).isActive = true
        self.telephoneNumber.bottomAnchor.constraint(equalTo: self.telephone.bottomAnchor).isActive = true
        self.telephoneNumber.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //email
        self.email.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.email.bottomAnchor.constraint(equalTo: self.vk.topAnchor, constant: -1).isActive = true
        self.email.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        //email address
        self.emailAddress.leadingAnchor.constraint(equalTo: self.email.trailingAnchor, constant: 10).isActive = true
        self.emailAddress.bottomAnchor.constraint(equalTo: self.email.bottomAnchor).isActive = true
        self.emailAddress.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //vk
        self.vk.bottomAnchor.constraint(equalTo: self.avatar.bottomAnchor).isActive = true
        self.vk.leadingAnchor.constraint(equalTo: self.family.leadingAnchor).isActive = true
        self.vk.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        //vk address
        self.vkAddress.bottomAnchor.constraint(equalTo: self.avatar.bottomAnchor).isActive = true
        self.vkAddress.leadingAnchor.constraint(equalTo: self.vk.trailingAnchor, constant: 7).isActive = true
        self.vkAddress.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
    }
}
