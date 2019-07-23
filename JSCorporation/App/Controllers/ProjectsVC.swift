//
//  ProjectsVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Проекты
class ProjectsVC: UIViewController {

    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var projectsSearchInfoView = UIView()
    
    private let resultSearch: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Расширенный поиск: 132"
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
    
    private let listsProjectsView: UIView = {
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
    var extensionSearchProjectsWindow: UIViewController!
    var listProjectsWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(projectsSearchInfoView)
        self.projectsSearchInfoView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1520)
        self.scroll.contentSize = self.projectsSearchInfoView.bounds.size
        
        createdByView()
        
        anchorConstraint()
        configCustomInformationView()
        
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        extensionSearchProjectsWindow = ExtensionSearchProjectsWindowVC()
        extensionSearchView.insertSubview(extensionSearchProjectsWindow.view, at: 0)
        addChild(extensionSearchProjectsWindow)
        
        listProjectsWindow = ListsProjectsWindowVC()
        listsProjectsView.insertSubview(listProjectsWindow.view, at: 0)
        addChild(listProjectsWindow)
    }
    
    func createdByView() {
        self.projectsSearchInfoView.addSubview(resultSearch)
        self.projectsSearchInfoView.addSubview(extensionSearchView)
        self.projectsSearchInfoView.addSubview(listsProjectsView)
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
        self.extensionSearchView.topAnchor.constraint(equalTo: self.projectsSearchInfoView.topAnchor, constant: 10).isActive = true
        self.extensionSearchView.leadingAnchor.constraint(equalTo: self.projectsSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.extensionSearchView.trailingAnchor.constraint(equalTo: self.projectsSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.extensionSearchView.bottomAnchor.constraint(equalTo: self.resultSearch.topAnchor, constant: -10).isActive = true
        
        //resultSearch
        self.resultSearch.centerYAnchor.constraint(equalTo: self.projectsSearchInfoView.centerYAnchor).isActive = true
        self.resultSearch.leadingAnchor.constraint(equalTo: self.projectsSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.resultSearch.trailingAnchor.constraint(equalTo: self.projectsSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.resultSearch.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //listsProjectsView
        self.listsProjectsView.topAnchor.constraint(equalTo: self.resultSearch.bottomAnchor, constant: 10).isActive = true
        self.listsProjectsView.leadingAnchor.constraint(equalTo: self.projectsSearchInfoView.leadingAnchor, constant: 10).isActive = true
        self.listsProjectsView.trailingAnchor.constraint(equalTo: self.projectsSearchInfoView.trailingAnchor, constant: -10).isActive = true
        self.listsProjectsView.bottomAnchor.constraint(equalTo: self.projectsSearchInfoView.bottomAnchor, constant: -10).isActive = true
    }
    
}
