//
//  ObjectsDesignVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Объекты дизайна
class ObjectsDesignVC: UIViewController {
    
    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var objectDesignSearchInfoView = UIView()
    
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
    
    private let myProjectsView: UIView = {
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
    
    private let objectDesignView: UIView = {
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
    var objectDesignWindow: UIViewController!
    var objectDesignProjectWindow: UIViewController!
    var extensionSearchObjectDesignWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(objectDesignSearchInfoView)
        self.objectDesignSearchInfoView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 990)
        self.scroll.contentSize = self.objectDesignSearchInfoView.bounds.size
        
        createdByView()
        
        configCustomInformationView()
        anchorConstraint()
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        objectDesignWindow = ObjectDesignWindowVC()
        objectDesignView.insertSubview(objectDesignWindow.view, at: 0)
        addChild(objectDesignWindow)
        
        objectDesignProjectWindow = ObjectDesignProjectWindowVC()
        myProjectsView.insertSubview(objectDesignProjectWindow.view, at: 0)
        addChild(objectDesignProjectWindow)
        
        extensionSearchObjectDesignWindow = ExtensionSearchObjectDesignWindowVC()
        extensionSearchView.insertSubview(extensionSearchObjectDesignWindow.view, at: 0)
        addChild(extensionSearchObjectDesignWindow)
    }
    
    func createdByView() {
        self.objectDesignSearchInfoView.addSubview(extensionSearchView)
        self.objectDesignSearchInfoView.addSubview(myProjectsView)
        self.objectDesignSearchInfoView.addSubview(objectDesignView)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    func anchorConstraint() {
        //scroll
        self.scroll.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 110).isActive = true
        self.scroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.scroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        //extension search view
        self.extensionSearchView.topAnchor.constraint(equalTo: self.objectDesignSearchInfoView.topAnchor, constant: 15).isActive = true
        self.extensionSearchView.leadingAnchor.constraint(equalTo: self.objectDesignSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.extensionSearchView.trailingAnchor.constraint(equalTo: self.objectDesignSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.extensionSearchView.heightAnchor.constraint(equalToConstant: 380).isActive = true
        
        //myProjectsView
        self.myProjectsView.topAnchor.constraint(equalTo: self.extensionSearchView.bottomAnchor, constant: 15).isActive = true
        self.myProjectsView.leadingAnchor.constraint(equalTo: self.extensionSearchView.leadingAnchor).isActive = true
        self.myProjectsView.trailingAnchor.constraint(equalTo: self.extensionSearchView.trailingAnchor).isActive = true
        self.myProjectsView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        //objectDesignView
        self.objectDesignView.topAnchor.constraint(equalTo: self.myProjectsView.bottomAnchor, constant: 15).isActive = true
        self.objectDesignView.bottomAnchor.constraint(equalTo: self.objectDesignSearchInfoView.bottomAnchor, constant: -15).isActive = true
        self.objectDesignView.leadingAnchor.constraint(equalTo: self.extensionSearchView.leadingAnchor).isActive = true
        self.objectDesignView.trailingAnchor.constraint(equalTo: self.extensionSearchView.trailingAnchor).isActive = true
        self.objectDesignView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
