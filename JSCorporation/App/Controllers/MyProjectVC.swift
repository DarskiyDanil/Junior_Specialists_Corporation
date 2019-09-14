//
//  MyProjectVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Мои проекты
class MyProjectVC: UIViewController {
    
    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    private var fullInfoMyProjectView = UIView()
    
    private let myProjectView: UIView = {
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
    
    private let fullTitleOfMyProjectView: UIView = {
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

    private let infoMyProjectView: UIView = {
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

    private let competitionView: UIView = {
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

    private let aboutTheProjectView: UIView = {
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

    private let teamView: UIView = {
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

    private let editingProject: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Редактировать проект", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()

    private let exportArchive: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Экспорт", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.titleLabel?.font = UIFont.customBold19
        btn.setTitleColor(UIColor.blackCostum, for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    var customNavigationBar: UIViewController!
    var myProjectListWindow: UIViewController!
    var fullTitleOfMyProjectWindow: UIViewController!
    var infoMyProjectWindow: UIViewController!
    var competitionWindow: UIViewController!
    var aboutTheProjectWindow: UIViewController!
    var teamWindow: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(fullInfoMyProjectView)
        self.fullInfoMyProjectView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1500)
        self.scroll.contentSize = self.fullInfoMyProjectView.bounds.size
        
        createdByView()
        
        configCustomInformationView()
        anchorConstraint()
    }
    
    //MARK: Methods
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        myProjectListWindow = MyProjectListWindowVC()
        myProjectView.insertSubview(myProjectListWindow.view, at: 0)
        addChild(myProjectListWindow)
        
        fullTitleOfMyProjectWindow = FullTitleOfMyProjectWindowVC()
        fullTitleOfMyProjectView.insertSubview(fullTitleOfMyProjectWindow.view, at: 0)
        addChild(fullTitleOfMyProjectWindow)
        
        infoMyProjectWindow = InfoMyProjectWindowVC()
        infoMyProjectView.insertSubview(infoMyProjectWindow.view, at: 0)
        addChild(infoMyProjectWindow)
        
        competitionWindow = CompetitionWindowVC()
        competitionView.insertSubview(competitionWindow.view, at: 0)
        addChild(competitionWindow)
        
        aboutTheProjectWindow = AboutTheProjectWindowVC()
        aboutTheProjectView.insertSubview(aboutTheProjectWindow.view, at: 0)
        addChild(aboutTheProjectWindow)
        
        teamWindow = TeamWindowVC()
        teamView.insertSubview(teamWindow.view, at: 0)
        addChild(teamWindow)
    }
    
    func createdByView() {
        self.fullInfoMyProjectView.addSubview(myProjectView)
        self.fullInfoMyProjectView.addSubview(fullTitleOfMyProjectView)
        self.fullInfoMyProjectView.addSubview(infoMyProjectView)
        self.fullInfoMyProjectView.addSubview(competitionView)
        self.fullInfoMyProjectView.addSubview(aboutTheProjectView)
        self.fullInfoMyProjectView.addSubview(teamView)
        self.fullInfoMyProjectView.addSubview(editingProject)
        self.fullInfoMyProjectView.addSubview(exportArchive)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Objc Methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Редактировать проект":
            let alertController = UIAlertController(title: "Внимание!", message: "Раздел 'Редактирование проекта' находится в разработке.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        case "Экспорт":
            let alertController = UIAlertController(title: "Внимание!", message: "Раздел 'Экспорт' находится в разработке.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        default:
            break
        }
    }
    
    //MARK: Constrains
    func anchorConstraint() {
        //scroll
        self.scroll.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 110).isActive = true
        self.scroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.scroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        //myProjectView
        self.myProjectView.topAnchor.constraint(equalTo: self.fullInfoMyProjectView.topAnchor, constant: 15).isActive = true
        self.myProjectView.leadingAnchor.constraint(equalTo: self.fullInfoMyProjectView.leadingAnchor, constant: 10).isActive = true
        self.myProjectView.trailingAnchor.constraint(equalTo: self.fullInfoMyProjectView.trailingAnchor, constant: -10).isActive = true
        self.myProjectView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //fullTitleOfMyProjectView
        self.fullTitleOfMyProjectView.topAnchor.constraint(equalTo: self.myProjectView.bottomAnchor, constant: 15).isActive = true
        self.fullTitleOfMyProjectView.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.fullTitleOfMyProjectView.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.fullTitleOfMyProjectView.heightAnchor.constraint(equalToConstant: 150).isActive = true

        //editingProject
        self.editingProject.topAnchor.constraint(equalTo: self.fullTitleOfMyProjectView.bottomAnchor, constant: 15).isActive = true
        self.editingProject.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.editingProject.widthAnchor.constraint(equalToConstant: 190).isActive = true
        self.editingProject.heightAnchor.constraint(equalToConstant: 25).isActive = true

        //exportArchive
        self.exportArchive.topAnchor.constraint(equalTo: self.editingProject.topAnchor).isActive = true
        self.exportArchive.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.exportArchive.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.exportArchive.heightAnchor.constraint(equalToConstant: 25).isActive = true

        //infoMyProjectView
        self.infoMyProjectView.topAnchor.constraint(equalTo: self.editingProject.bottomAnchor, constant: 15).isActive = true
        self.infoMyProjectView.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.infoMyProjectView.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.infoMyProjectView.heightAnchor.constraint(equalToConstant: 170).isActive = true

        //competitionView
        self.competitionView.topAnchor.constraint(equalTo: self.infoMyProjectView.bottomAnchor, constant: 15).isActive = true
        self.competitionView.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.competitionView.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.competitionView.heightAnchor.constraint(equalToConstant: 170).isActive = true

        //aboutTheProjectView
        self.aboutTheProjectView.topAnchor.constraint(equalTo: self.competitionView.bottomAnchor, constant: 15).isActive = true
        self.aboutTheProjectView.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.aboutTheProjectView.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.aboutTheProjectView.heightAnchor.constraint(equalToConstant: 250).isActive = true

        //teamView
        self.teamView.topAnchor.constraint(equalTo: self.aboutTheProjectView.bottomAnchor, constant: 15).isActive = true
        self.teamView.leadingAnchor.constraint(equalTo: self.myProjectView.leadingAnchor).isActive = true
        self.teamView.trailingAnchor.constraint(equalTo: self.myProjectView.trailingAnchor).isActive = true
        self.teamView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
