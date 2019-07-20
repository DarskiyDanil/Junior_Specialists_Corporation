//
//  InfoWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class InfoWindowVC: UIViewController {

    //MARK: Properties
    private let informationLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Информация:"
        return lbl
    }()
    
    private let country: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Страна:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let countryTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Россия"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let city: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Город:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let cityTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Москва"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let sex: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Пол:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let sexTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Мужской"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let specialty: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Специальность:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let specialtyTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Стартапер"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let work: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Могу работать: "
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let workTime: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "24/7"
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
        self.view.addSubview(informationLabel)
        self.view.addSubview(country)
        self.view.addSubview(countryTitle)
        self.view.addSubview(city)
        self.view.addSubview(cityTitle)
        self.view.addSubview(sex)
        self.view.addSubview(sexTitle)
        self.view.addSubview(specialty)
        self.view.addSubview(specialtyTitle)
        self.view.addSubview(work)
        self.view.addSubview(workTime)
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //information label
        self.informationLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.informationLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.informationLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.informationLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //country
        self.country.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.country.topAnchor.constraint(equalTo: self.informationLabel.bottomAnchor, constant: 2).isActive = true
        self.country.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        //country title
        self.countryTitle.leadingAnchor.constraint(equalTo: self.country.trailingAnchor, constant: 10).isActive = true
        self.countryTitle.topAnchor.constraint(equalTo: self.country.topAnchor).isActive = true
        self.countryTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        
        //city
        self.city.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.city.topAnchor.constraint(equalTo: self.country.bottomAnchor, constant: 2).isActive = true
        self.city.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        //city title
        self.cityTitle.leadingAnchor.constraint(equalTo: self.city.trailingAnchor, constant: 10).isActive = true
        self.cityTitle.topAnchor.constraint(equalTo: self.city.topAnchor).isActive = true
        self.cityTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //sex
        self.sex.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.sex.topAnchor.constraint(equalTo: self.city.bottomAnchor, constant: 2).isActive = true
        self.sex.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        //sex title
        self.sexTitle.leadingAnchor.constraint(equalTo: self.sex.trailingAnchor, constant: 10).isActive = true
        self.sexTitle.topAnchor.constraint(equalTo: self.sex.topAnchor).isActive = true
        self.sexTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //specialty
        self.specialty.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.specialty.topAnchor.constraint(equalTo: self.sex.bottomAnchor, constant: 2).isActive = true
        self.specialty.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        //specialty title
        self.specialtyTitle.leadingAnchor.constraint(equalTo: self.specialty.trailingAnchor, constant: 10).isActive = true
        self.specialtyTitle.topAnchor.constraint(equalTo: self.specialty.topAnchor).isActive = true
        self.specialtyTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        //work
        self.work.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.work.topAnchor.constraint(equalTo: self.specialty.bottomAnchor, constant: 2).isActive = true
        self.work.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        //work time
        self.workTime.leadingAnchor.constraint(equalTo: self.work.trailingAnchor, constant: 10).isActive = true
        self.workTime.topAnchor.constraint(equalTo: self.work.topAnchor).isActive = true
        self.workTime.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
    }
}
