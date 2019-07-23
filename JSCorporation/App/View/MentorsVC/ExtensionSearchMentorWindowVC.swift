//
//  ExtensionSearchMentorWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 23/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ExtensionSearchMentorWindowVC: UIViewController {

    //MARK: Properties
    private let advancedSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск по менторам:"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let verification: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Верификация:"
        return lbl
    }()
    
    private let documentsFromJSCorp: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Документы с JS Corp.:"
        return lbl
    }()
    
    private let employment: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Занятость:"
        return lbl
    }()
    
    private let readyForWork: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Готов к работе:"
        return lbl
    }()
    
    private let specialty: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Специальность:"
        return lbl
    }()
    
    private let floor: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Пол:"
        return lbl
    }()
    
    private let countryCity: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Страна / Город:"
        return lbl
    }()
    
    private let profileSkill: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Профильный навык:"
        return lbl
    }()
    
    private let verificationShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Любая", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let documentsFromJSCorpShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Подписаны / Частично подписаны", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let employmentShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Не занят / Частично свободен", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let readyForWorkShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("3 - 5 часов", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let specialtyShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Введите специальность...", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.grayCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let floorShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Любая", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let countryCityShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Введите страну / город...", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.grayCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let profileSkillShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Введите навык...", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.grayCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
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
        self.view.addSubview(advancedSearch)
        self.view.addSubview(verification)
        self.view.addSubview(verificationShow)
        self.view.addSubview(documentsFromJSCorp)
        self.view.addSubview(documentsFromJSCorpShow)
        self.view.addSubview(employment)
        self.view.addSubview(employmentShow)
        self.view.addSubview(readyForWork)
        self.view.addSubview(readyForWorkShow)
        self.view.addSubview(specialty)
        self.view.addSubview(specialtyShow)
        self.view.addSubview(floor)
        self.view.addSubview(floorShow)
        self.view.addSubview(countryCity)
        self.view.addSubview(countryCityShow)
        self.view.addSubview(profileSkill)
        self.view.addSubview(profileSkillShow)
    }
    
    //MARK: Objc Methods
    @objc func tappedIsButton(_ sender: UIButton) {
        print("Tapped is button")
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        //advancedSearch
        self.advancedSearch.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.advancedSearch.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.advancedSearch.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.advancedSearch.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //verification
        self.verification.topAnchor.constraint(equalTo: self.advancedSearch.bottomAnchor, constant: 20).isActive = true
        self.verification.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.verification.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.verification.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //verificationShow
        self.verificationShow.topAnchor.constraint(equalTo: self.verification.bottomAnchor, constant: 10).isActive = true
        self.verificationShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.verificationShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.verificationShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //documentsFromJSCorp
        self.documentsFromJSCorp.topAnchor.constraint(equalTo: self.verificationShow.bottomAnchor, constant: 20).isActive = true
        self.documentsFromJSCorp.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.documentsFromJSCorp.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.documentsFromJSCorp.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //documentsFromJSCorpShow
        self.documentsFromJSCorpShow.topAnchor.constraint(equalTo: self.documentsFromJSCorp.bottomAnchor, constant: 10).isActive = true
        self.documentsFromJSCorpShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.documentsFromJSCorpShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.documentsFromJSCorpShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //employment
        self.employment.topAnchor.constraint(equalTo: self.documentsFromJSCorpShow.bottomAnchor, constant: 20).isActive = true
        self.employment.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.employment.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.employment.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //employmentShow
        self.employmentShow.topAnchor.constraint(equalTo: self.employment.bottomAnchor, constant: 10).isActive = true
        self.employmentShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.employmentShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.employmentShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //readyForWork
        self.readyForWork.topAnchor.constraint(equalTo: self.employmentShow.bottomAnchor, constant: 20).isActive = true
        self.readyForWork.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.readyForWork.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.readyForWork.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //readyForWorkShow
        self.readyForWorkShow.topAnchor.constraint(equalTo: self.readyForWork.bottomAnchor, constant: 10).isActive = true
        self.readyForWorkShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.readyForWorkShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.readyForWorkShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //specialty
        self.specialty.topAnchor.constraint(equalTo: self.readyForWorkShow.bottomAnchor, constant: 20).isActive = true
        self.specialty.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.specialty.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.specialty.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //specialtyShow
        self.specialtyShow.topAnchor.constraint(equalTo: self.specialty.bottomAnchor, constant: 10).isActive = true
        self.specialtyShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.specialtyShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.specialtyShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //floor
        self.floor.topAnchor.constraint(equalTo: self.specialtyShow.bottomAnchor, constant: 20).isActive = true
        self.floor.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.floor.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.floor.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //floorShow
        self.floorShow.topAnchor.constraint(equalTo: self.floor.bottomAnchor, constant: 10).isActive = true
        self.floorShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.floorShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.floorShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //countryCity
        self.countryCity.topAnchor.constraint(equalTo: self.floorShow.bottomAnchor, constant: 20).isActive = true
        self.countryCity.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.countryCity.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.countryCity.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //countryCityShow
        self.countryCityShow.topAnchor.constraint(equalTo: self.countryCity.bottomAnchor, constant: 10).isActive = true
        self.countryCityShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.countryCityShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.countryCityShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //profileSkill
        self.profileSkill.topAnchor.constraint(equalTo: self.countryCityShow.bottomAnchor, constant: 20).isActive = true
        self.profileSkill.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.profileSkill.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.profileSkill.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //profileSkillShow
        self.profileSkillShow.topAnchor.constraint(equalTo: self.profileSkill.bottomAnchor, constant: 10).isActive = true
        self.profileSkillShow.leadingAnchor.constraint(equalTo: self.verification.leadingAnchor).isActive = true
        self.profileSkillShow.trailingAnchor.constraint(equalTo: self.verification.trailingAnchor).isActive = true
        self.profileSkillShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
