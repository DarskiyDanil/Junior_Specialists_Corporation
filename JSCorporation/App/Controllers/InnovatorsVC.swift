//
//  InnovatorsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Новаторы
class InnovatorsVC: UIViewController {

    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var innovatorSearchInfoView = UIView()
    
    private let resultSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск: 321"
        return lbl
    }()
    
    private let extensionSearchView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.snowCustom
        view.layer.cornerRadius = 5
        view.layer.shadowColor = UIColor.smokeCustom.cgColor
        view.layer.shadowOpacity = 15
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        return view
    }()
    
    private let listsInnovatorsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.snowCustom
        view.layer.cornerRadius = 5
        view.layer.shadowColor = UIColor.smokeCustom.cgColor
        view.layer.shadowOpacity = 15
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        return view
    }()
    
    var customNavigationBar: UIViewController!
    var extensionSearchInnovatorWindow: UIViewController!
    var listInnovatorsWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(innovatorSearchInfoView)
        self.innovatorSearchInfoView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1520)
        self.scroll.contentSize = self.innovatorSearchInfoView.bounds.size
        
        createdByView()
        
        anchorConstraint()
        configCustomInformationView()
        
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        extensionSearchInnovatorWindow = ExtensionSearchInnovatorWindowVC()
        extensionSearchView.insertSubview(extensionSearchInnovatorWindow.view, at: 0)
        addChild(extensionSearchInnovatorWindow)
        
        listInnovatorsWindow = ListInnovatorsWindowVC()
        listsInnovatorsView.insertSubview(listInnovatorsWindow.view, at: 0)
        addChild(listInnovatorsWindow)
    }
    
    func createdByView() {
        self.innovatorSearchInfoView.addSubview(resultSearch)
        self.innovatorSearchInfoView.addSubview(extensionSearchView)
        self.innovatorSearchInfoView.addSubview(listsInnovatorsView)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        //scroll
        self.scroll.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 110).isActive = true
        self.scroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.scroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        //extensionSearchView
        self.extensionSearchView.topAnchor.constraint(equalTo: self.innovatorSearchInfoView.topAnchor, constant: 10).isActive = true
        self.extensionSearchView.leadingAnchor.constraint(equalTo: self.innovatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.extensionSearchView.trailingAnchor.constraint(equalTo: self.innovatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.extensionSearchView.bottomAnchor.constraint(equalTo: self.resultSearch.topAnchor, constant: -10).isActive = true
        
        //resultSearch
        self.resultSearch.centerYAnchor.constraint(equalTo: self.innovatorSearchInfoView.centerYAnchor).isActive = true
        self.resultSearch.leadingAnchor.constraint(equalTo: self.innovatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.resultSearch.trailingAnchor.constraint(equalTo: self.innovatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.resultSearch.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //listsInnovatorsView
        self.listsInnovatorsView.topAnchor.constraint(equalTo: self.resultSearch.bottomAnchor, constant: 10).isActive = true
        self.listsInnovatorsView.leadingAnchor.constraint(equalTo: self.innovatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.listsInnovatorsView.trailingAnchor.constraint(equalTo: self.innovatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.listsInnovatorsView.bottomAnchor.constraint(equalTo: self.innovatorSearchInfoView.bottomAnchor, constant: -10).isActive = true
    }
    
}
