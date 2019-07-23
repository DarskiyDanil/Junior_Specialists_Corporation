//
//  ExtensionSearchObjectDesignWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 20/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ExtensionSearchObjectDesignWindowVC: UIViewController {
   
    //MARK: Properties
    private let advancedSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск:"
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    private let showDocuments: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Показать документы:"
        return lbl
    }()
    
    private let documentFormat: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Формат документа:"
        return lbl
    }()
    
    private let publicationDate: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Дата публикации:"
        return lbl
    }()
    
    private let region: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Область:"
        return lbl
    }()
    
    private let allProjectShow: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Все проекты", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let everything: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Все (.zip, .rar)", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let spacingPublicationDate: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("01.01.0001 - 01.01.2002", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.grayCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let allAreas: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Все области (Fantech, ...)", for: .normal)
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
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
        self.view.addSubview(showDocuments)
        self.view.addSubview(documentFormat)
        self.view.addSubview(publicationDate)
        self.view.addSubview(region)
        self.view.addSubview(allProjectShow)
        self.view.addSubview(everything)
        self.view.addSubview(spacingPublicationDate)
        self.view.addSubview(allAreas)
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
        
        //showDocument
        self.showDocuments.topAnchor.constraint(equalTo: self.advancedSearch.bottomAnchor, constant: 20).isActive = true
        self.showDocuments.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.showDocuments.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.showDocuments.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //allProjectShow
        self.allProjectShow.topAnchor.constraint(equalTo: self.showDocuments.bottomAnchor, constant: 10).isActive = true
        self.allProjectShow.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.allProjectShow.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.allProjectShow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //documentFormat
        self.documentFormat.topAnchor.constraint(equalTo: self.allProjectShow.bottomAnchor, constant: 10).isActive = true
        self.documentFormat.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.documentFormat.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.documentFormat.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //everything
        self.everything.topAnchor.constraint(equalTo: self.documentFormat.bottomAnchor, constant: 10).isActive = true
        self.everything.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.everything.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.everything.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //publicationDate
        self.publicationDate.topAnchor.constraint(equalTo: self.everything.bottomAnchor, constant: 10).isActive = true
        self.publicationDate.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.publicationDate.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.publicationDate.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //spacingPublicationDate
        self.spacingPublicationDate.topAnchor.constraint(equalTo: self.publicationDate.bottomAnchor, constant: 10).isActive = true
        self.spacingPublicationDate.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.spacingPublicationDate.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.spacingPublicationDate.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //region
        self.region.topAnchor.constraint(equalTo: self.spacingPublicationDate.bottomAnchor, constant: 10).isActive = true
        self.region.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.region.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.region.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //allAreas
        self.allAreas.topAnchor.constraint(equalTo: self.region.bottomAnchor, constant: 10).isActive = true
        self.allAreas.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.allAreas.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.allAreas.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
