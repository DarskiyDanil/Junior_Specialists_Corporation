//
//  ExtensionSearchProjectsWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 23/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ExtensionSearchProjectsWindowVC: UIViewController {

    //MARK: Properties
    private let advancedSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск по проектам:"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let direction: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Направление:"
        return lbl
    }()
    
    private let documentsFromJSCorp: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Документы с JS Corp.:"
        return lbl
    }()
    
    private let teamMan: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Человек в команде:"
        return lbl
    }()
    
    private let worldGDP: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Мировой ВВП:"
        return lbl
    }()
    
    private let productStage: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Стадия продукта:"
        return lbl
    }()
    
    private let market: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Рынок:"
        return lbl
    }()
    
    private let noIdea: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Без идей:"
        return lbl
    }()
    
    private let competition: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Конкуренция:"
        return lbl
    }()
    
    private let directionShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Любое", for: .normal)
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
    
    private let teamMantShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("1 - 1000 человек", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let worldGDPShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("1 billion $ - 10 trillion $", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let productStageShow: UIButton = {
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
    
    private let marketShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Любой", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let noIdeaShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Пустой слот", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let competitionShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Введите конкурента", for: .normal)
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
        self.view.addSubview(direction)
        self.view.addSubview(directionShow)
        self.view.addSubview(documentsFromJSCorp)
        self.view.addSubview(documentsFromJSCorpShow)
        self.view.addSubview(teamMan)
        self.view.addSubview(teamMantShow)
        self.view.addSubview(worldGDP)
        self.view.addSubview(worldGDPShow)
        self.view.addSubview(productStage)
        self.view.addSubview(productStageShow)
        self.view.addSubview(market)
        self.view.addSubview(marketShow)
        self.view.addSubview(noIdea)
        self.view.addSubview(noIdeaShow)
        self.view.addSubview(competition)
        self.view.addSubview(competitionShow)
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
        
        //direction
        self.direction.topAnchor.constraint(equalTo: self.advancedSearch.bottomAnchor, constant: 20).isActive = true
        self.direction.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.direction.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.direction.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //directionShow
        self.directionShow.topAnchor.constraint(equalTo: self.direction.bottomAnchor, constant: 10).isActive = true
        self.directionShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.directionShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.directionShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //documentsFromJSCorp
        self.documentsFromJSCorp.topAnchor.constraint(equalTo: self.directionShow.bottomAnchor, constant: 20).isActive = true
        self.documentsFromJSCorp.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.documentsFromJSCorp.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.documentsFromJSCorp.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //documentsFromJSCorpShow
        self.documentsFromJSCorpShow.topAnchor.constraint(equalTo: self.documentsFromJSCorp.bottomAnchor, constant: 10).isActive = true
        self.documentsFromJSCorpShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.documentsFromJSCorpShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.documentsFromJSCorpShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //teamMan
        self.teamMan.topAnchor.constraint(equalTo: self.documentsFromJSCorpShow.bottomAnchor, constant: 20).isActive = true
        self.teamMan.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.teamMan.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.teamMan.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //teamMantShow
        self.teamMantShow.topAnchor.constraint(equalTo: self.teamMan.bottomAnchor, constant: 10).isActive = true
        self.teamMantShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.teamMantShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.teamMantShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //worldGDP
        self.worldGDP.topAnchor.constraint(equalTo: self.teamMantShow.bottomAnchor, constant: 20).isActive = true
        self.worldGDP.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.worldGDP.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.worldGDP.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //worldGDPShow
        self.worldGDPShow.topAnchor.constraint(equalTo: self.worldGDP.bottomAnchor, constant: 10).isActive = true
        self.worldGDPShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.worldGDPShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.worldGDPShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //productStage
        self.productStage.topAnchor.constraint(equalTo: self.worldGDPShow.bottomAnchor, constant: 20).isActive = true
        self.productStage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.productStage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.productStage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //productStageShow
        self.productStageShow.topAnchor.constraint(equalTo: self.productStage.bottomAnchor, constant: 10).isActive = true
        self.productStageShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.productStageShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.productStageShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //market
        self.market.topAnchor.constraint(equalTo: self.productStageShow.bottomAnchor, constant: 20).isActive = true
        self.market.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.market.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.market.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //marketShow
        self.marketShow.topAnchor.constraint(equalTo: self.market.bottomAnchor, constant: 10).isActive = true
        self.marketShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.marketShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.marketShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //noIdea
        self.noIdea.topAnchor.constraint(equalTo: self.marketShow.bottomAnchor, constant: 20).isActive = true
        self.noIdea.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.noIdea.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.noIdea.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //noIdeaShow
        self.noIdeaShow.topAnchor.constraint(equalTo: self.noIdea.bottomAnchor, constant: 10).isActive = true
        self.noIdeaShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.noIdeaShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.noIdeaShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //competition
        self.competition.topAnchor.constraint(equalTo: self.noIdeaShow.bottomAnchor, constant: 20).isActive = true
        self.competition.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.competition.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.competition.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //competitionShow
        self.competitionShow.topAnchor.constraint(equalTo: self.competition.bottomAnchor, constant: 10).isActive = true
        self.competitionShow.leadingAnchor.constraint(equalTo: self.direction.leadingAnchor).isActive = true
        self.competitionShow.trailingAnchor.constraint(equalTo: self.direction.trailingAnchor).isActive = true
        self.competitionShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
