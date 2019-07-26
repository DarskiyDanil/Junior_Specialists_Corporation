//
//  CompetitionWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 26/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class CompetitionWindowVC: UIViewController {

    //MARK: Properties
    private let competitionLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Конкуренция:"
        return lbl
    }()
    
    private let firstUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsWebFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let secondUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsManagFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let thirdUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsStartFirst), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let fourthUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsWebSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let fifthUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsManagSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    private let sixthUntitled: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Без названия", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsStartSecond), for: .touchUpInside)
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        return btn
    }()
    
    var first: Bool!
    var second: Bool!
    var third: Bool!
    var fourth: Bool!
    var fifth: Bool!
    var sixth: Bool!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(competitionLabel)
        self.view.addSubview(firstUntitled)
        self.view.addSubview(fourthUntitled)
        self.view.addSubview(secondUntitled)
        self.view.addSubview(fifthUntitled)
        self.view.addSubview(thirdUntitled)
        self.view.addSubview(sixthUntitled)
        
        first = false
        second = false
        third = false
        fourth = false
        fifth = false
        sixth = false
        
        //other methods
        anchorConstraint()
    }
    
    //MARK: Methods
    
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        
    }
    
    @objc func tappedIsWebFirst() {
        first = !first
        if first == true {
            firstUntitled.backgroundColor = UIColor.cyanCustom
            firstUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsWebSecond() {
        second = !second
        if second == true {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.cyanCustom
            fourthUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsManagFirst() {
        second = !second
        if second == true {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.cyanCustom
            secondUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsManagSecond() {
        second = !second
        if second == true {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.cyanCustom
            fifthUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsStartFirst() {
        second = !second
        if second == true {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.cyanCustom
            thirdUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        } else {
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    @objc func tappedIsStartSecond() {
        second = !second
        if second == true {
            firstUntitled.backgroundColor = UIColor.snowCustom
            firstUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fourthUntitled.backgroundColor = UIColor.snowCustom
            fourthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            secondUntitled.backgroundColor = UIColor.snowCustom
            secondUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            fifthUntitled.backgroundColor = UIColor.snowCustom
            fifthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            thirdUntitled.backgroundColor = UIColor.snowCustom
            thirdUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
            
            sixthUntitled.backgroundColor = UIColor.cyanCustom
            sixthUntitled.setTitleColor(UIColor.snowCustom, for: .normal)
        } else {
            sixthUntitled.backgroundColor = UIColor.snowCustom
            sixthUntitled.setTitleColor(UIColor.cyanCustom, for: .normal)
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //profile skills label
        self.competitionLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.competitionLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.competitionLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.competitionLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //web design first
        self.firstUntitled.topAnchor.constraint(equalTo: self.competitionLabel.bottomAnchor, constant: 10).isActive = true
        self.firstUntitled.leadingAnchor.constraint(equalTo: self.competitionLabel.leadingAnchor).isActive = true
        self.firstUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.firstUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //web design second
        self.fourthUntitled.topAnchor.constraint(equalTo: self.firstUntitled.topAnchor).isActive = true
        self.fourthUntitled.leadingAnchor.constraint(equalTo: self.firstUntitled.trailingAnchor, constant: 10).isActive = true
        self.fourthUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.fourthUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //management first
        self.secondUntitled.topAnchor.constraint(equalTo: self.firstUntitled.bottomAnchor, constant: 10).isActive = true
        self.secondUntitled.leadingAnchor.constraint(equalTo: self.firstUntitled.leadingAnchor).isActive = true
        self.secondUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.secondUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //management second
        self.fifthUntitled.topAnchor.constraint(equalTo: self.secondUntitled.topAnchor).isActive = true
        self.fifthUntitled.leadingAnchor.constraint(equalTo: self.secondUntitled.trailingAnchor, constant: 10).isActive = true
        self.fifthUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.fifthUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //startups first
        self.thirdUntitled.topAnchor.constraint(equalTo: self.secondUntitled.bottomAnchor, constant: 10).isActive = true
        self.thirdUntitled.leadingAnchor.constraint(equalTo: self.firstUntitled.leadingAnchor).isActive = true
        self.thirdUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.thirdUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //startups second
        self.sixthUntitled.topAnchor.constraint(equalTo: self.thirdUntitled.topAnchor).isActive = true
        self.sixthUntitled.leadingAnchor.constraint(equalTo: self.thirdUntitled.trailingAnchor, constant: 10).isActive = true
        self.sixthUntitled.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.sixthUntitled.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}

