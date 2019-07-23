//
//  CuratorsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Кураторы
class CuratorsVC: UIViewController {

    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var curatorSearchInfoView = UIView()
    
    private let resultSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск: 312"
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
    
    private let listsCuratorsView: UIView = {
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
    var extensionSearchCuratorsWindow: UIViewController!
    var listCuratorsWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(curatorSearchInfoView)
        self.curatorSearchInfoView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1520)
        self.scroll.contentSize = self.curatorSearchInfoView.bounds.size
        
        createdByView()
        
        anchorConstraint()
        configCustomInformationView()
        
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        extensionSearchCuratorsWindow = ExtensionSearchCuratorWindowVC()
        extensionSearchView.insertSubview(extensionSearchCuratorsWindow.view, at: 0)
        addChild(extensionSearchCuratorsWindow)
        
        listCuratorsWindow = ListCuratorsWindowVC()
        listsCuratorsView.insertSubview(listCuratorsWindow.view, at: 0)
        addChild(listCuratorsWindow)
    }
    
    func createdByView() {
        self.curatorSearchInfoView.addSubview(resultSearch)
        self.curatorSearchInfoView.addSubview(extensionSearchView)
        self.curatorSearchInfoView.addSubview(listsCuratorsView)
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
        self.extensionSearchView.topAnchor.constraint(equalTo: self.curatorSearchInfoView.topAnchor, constant: 10).isActive = true
        self.extensionSearchView.leadingAnchor.constraint(equalTo: self.curatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.extensionSearchView.trailingAnchor.constraint(equalTo: self.curatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.extensionSearchView.bottomAnchor.constraint(equalTo: self.resultSearch.topAnchor, constant: -10).isActive = true
        
        //resultSearch
        self.resultSearch.centerYAnchor.constraint(equalTo: self.curatorSearchInfoView.centerYAnchor).isActive = true
        self.resultSearch.leadingAnchor.constraint(equalTo: self.curatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.resultSearch.trailingAnchor.constraint(equalTo: self.curatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.resultSearch.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //listsCuratorsView
        self.listsCuratorsView.topAnchor.constraint(equalTo: self.resultSearch.bottomAnchor, constant: 10).isActive = true
        self.listsCuratorsView.leadingAnchor.constraint(equalTo: self.curatorSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.listsCuratorsView.trailingAnchor.constraint(equalTo: self.curatorSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.listsCuratorsView.bottomAnchor.constraint(equalTo: self.curatorSearchInfoView.bottomAnchor, constant: -10).isActive = true
    }
    
}
