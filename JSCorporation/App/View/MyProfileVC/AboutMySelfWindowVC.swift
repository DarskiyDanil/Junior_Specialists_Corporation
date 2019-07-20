//
//  AboutMySelfWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class AboutMySelfWindowVC: UIViewController {

    //MARK: Properties
    private let aboutMySelfLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "О себе:"
        return lbl
    }()
    
    private let aboutMySelfFullText: UITextView = {
        let txt = UITextView()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who. Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who. Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who. Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who. Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who. Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed. Truth short folly court why she their balls. Excellence put unaffected reasonable mrs introduced conviction she. Nay particular delightful but unpleasant for uncommonly who."
        return txt
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(aboutMySelfLabel)
        self.view.addSubview(aboutMySelfFullText)
        
        //other methods
        anchorConstraint()
        
    }
    
    //MARK: Methods
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //aboutMySelf label
        self.aboutMySelfLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.aboutMySelfLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.aboutMySelfLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.aboutMySelfLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //about my self full text
        self.aboutMySelfFullText.topAnchor.constraint(equalTo: self.aboutMySelfLabel.bottomAnchor, constant: 10).isActive = true
        self.aboutMySelfFullText.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.aboutMySelfFullText.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.aboutMySelfFullText.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
    }
}
