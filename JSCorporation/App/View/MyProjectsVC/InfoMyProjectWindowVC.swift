//
//  InfoMyProjectWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 26/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class InfoMyProjectWindowVC: UIViewController {

    //MARK: Properties
    private let informationLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Информация:"
        return lbl
    }()
    
    private let market: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Рынок:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let marketTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "R&D / ICT"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let worldGDP: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Мировой ВВП:"
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    private let worldGDPTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "3 658 billions $"
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
        self.view.addSubview(market)
        self.view.addSubview(marketTitle)
        self.view.addSubview(worldGDP)
        self.view.addSubview(worldGDPTitle)
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //information label
        self.informationLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.informationLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.informationLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.informationLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //market
        self.market.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.market.topAnchor.constraint(equalTo: self.informationLabel.bottomAnchor, constant: 2).isActive = true
        self.market.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        //country title
        self.marketTitle.leadingAnchor.constraint(equalTo: self.market.trailingAnchor, constant: 10).isActive = true
        self.marketTitle.topAnchor.constraint(equalTo: self.market.topAnchor).isActive = true
        self.marketTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        
        
        //worldGDP
        self.worldGDP.leadingAnchor.constraint(equalTo: self.informationLabel.leadingAnchor).isActive = true
        self.worldGDP.topAnchor.constraint(equalTo: self.market.bottomAnchor, constant: 2).isActive = true
        self.worldGDP.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //city title
        self.worldGDPTitle.leadingAnchor.constraint(equalTo: self.worldGDP.trailingAnchor, constant: 10).isActive = true
        self.worldGDPTitle.topAnchor.constraint(equalTo: self.worldGDP.topAnchor).isActive = true
        self.worldGDPTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
    }
}

