//
//  MyDocumentsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Мои документы
class MyDocumentsVC: UIViewController {

    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var myDocumentSearchInfoView = UIView()
    
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
    
    private let myDocumentsView: UIView = {
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
    
    private let formsOfDocumentsView: UIView = {
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
    var extensionSearchMyDocumentsWindow: UIViewController!
    var myDocumentsWindow: UIViewController!
    var formsOfDocumentsWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(myDocumentSearchInfoView)
        self.myDocumentSearchInfoView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1050)
        self.scroll.contentSize = self.myDocumentSearchInfoView.bounds.size
        
        
        createdByView()
        
        configCustomInformationView()
        
        anchorConstraint()
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        extensionSearchMyDocumentsWindow = ExtensionSearchMyDocumentsWindowVC()
        extensionSearchView.insertSubview(extensionSearchMyDocumentsWindow.view, at: 0)
        addChild(extensionSearchMyDocumentsWindow)
        
        myDocumentsWindow = MyDocumentsWindowVC()
        myDocumentsView.insertSubview(myDocumentsWindow.view, at: 0)
        addChild(myDocumentsWindow)
        
        formsOfDocumentsWindow = FormsOfDocumentsWindowVC()
        formsOfDocumentsView.insertSubview(formsOfDocumentsWindow.view, at: 0)
        addChild(formsOfDocumentsWindow)
    }
    
    func createdByView() {
        self.myDocumentSearchInfoView.addSubview(extensionSearchView)
        self.myDocumentSearchInfoView.addSubview(myDocumentsView)
        self.myDocumentSearchInfoView.addSubview(formsOfDocumentsView)
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
        self.extensionSearchView.topAnchor.constraint(equalTo: self.myDocumentSearchInfoView.topAnchor, constant: 15).isActive = true
        self.extensionSearchView.leadingAnchor.constraint(equalTo: self.myDocumentSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.extensionSearchView.trailingAnchor.constraint(equalTo: self.myDocumentSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.extensionSearchView.heightAnchor.constraint(equalToConstant: 380).isActive = true
        
        //myDocumentsView
        self.myDocumentsView.topAnchor.constraint(equalTo: self.extensionSearchView.bottomAnchor, constant: 15).isActive = true
        self.myDocumentsView.leadingAnchor.constraint(equalTo: self.extensionSearchView.leadingAnchor).isActive = true
        self.myDocumentsView.trailingAnchor.constraint(equalTo: self.extensionSearchView.trailingAnchor).isActive = true
        self.myDocumentsView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //formsOfDocumentsView
        self.formsOfDocumentsView.topAnchor.constraint(equalTo: self.myDocumentsView.bottomAnchor, constant: 15).isActive = true
        self.formsOfDocumentsView.bottomAnchor.constraint(equalTo: self.myDocumentSearchInfoView.bottomAnchor, constant: -15).isActive = true
        self.formsOfDocumentsView.leadingAnchor.constraint(equalTo: self.extensionSearchView.leadingAnchor).isActive = true
        self.formsOfDocumentsView.trailingAnchor.constraint(equalTo: self.extensionSearchView.trailingAnchor).isActive = true
        self.formsOfDocumentsView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}

