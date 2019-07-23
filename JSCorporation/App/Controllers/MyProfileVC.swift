//
//  MyProfileVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Мой профиль
class MyProfileVC: UIViewController {
    
    //MARK: Properties
    private var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
   
    private var infoProfileView = UIView()

    private let profileView: UIView = {
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
    
    private let infoView: UIView = {
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
    
    private let skillsView: UIView = {
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
    
    private let aboutMySelfView: UIView = {
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
    
    private let myDocumentView: UIView = {
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
    
    private let editingProfile: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Редактировать профиль", for: .normal)
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
    var profileWindowVC: UIViewController!
    var infoWindowVC: UIViewController!
    var profileSkillsVC: UIViewController!
    var aboutMySelfWindowVC: UIViewController!
    var myProjectWindowVC: UIViewController!
    var myDocumentWindowVC: UIViewController!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scroll)
        self.scroll.addSubview(infoProfileView)
        self.infoProfileView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1500)
        self.scroll.contentSize = self.infoProfileView.bounds.size
    
        createdByView()
        
        configCustomInformationView()
        anchorConstraint()
    }
    
    func configCustomInformationView() {
        customNavigationBar = CustomNavigationBarVC()
        view.insertSubview(customNavigationBar.view, at: 0)
        addChild(customNavigationBar)
        
        profileWindowVC = ProfileWindowVC()
        profileView.insertSubview(profileWindowVC.view, at: 0)
        addChild(profileWindowVC)
        
        infoWindowVC = InfoWindowVC()
        infoView.insertSubview(infoWindowVC.view, at: 0)
        addChild(infoWindowVC)
        
        profileSkillsVC = ProfileSkillsVC()
        skillsView.insertSubview(profileSkillsVC.view, at: 0)
        addChild(profileSkillsVC)
        
        aboutMySelfWindowVC = AboutMySelfWindowVC()
        aboutMySelfView.insertSubview(aboutMySelfWindowVC.view, at: 0)
        addChild(aboutMySelfWindowVC)
        
        myProjectWindowVC = MyProjectWindowVC()
        myProjectView.insertSubview(myProjectWindowVC.view, at: 0)
        addChild(myProjectWindowVC)
        
        myDocumentWindowVC = MyDocumentWindowVC()
        myDocumentView.insertSubview(myDocumentWindowVC.view, at: 0)
        addChild(myDocumentWindowVC)
    }
    
    func createdByView() {
        self.infoProfileView.addSubview(profileView)
        self.infoProfileView.addSubview(infoView)
        self.infoProfileView.addSubview(skillsView)
        self.infoProfileView.addSubview(aboutMySelfView)
        self.infoProfileView.addSubview(myProjectView)
        self.infoProfileView.addSubview(myDocumentView)
        self.infoProfileView.addSubview(editingProfile)
        self.infoProfileView.addSubview(exportArchive)
    }
    
    //MARK: Methods
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    //MARK: Objc Methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Редактировать профиль":
            let alertController = UIAlertController(title: "Внимание!", message: "Раздел 'Редактирование профиля' находится в разработке.", preferredStyle: .alert)
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
        
        //profile
        self.profileView.topAnchor.constraint(equalTo: self.infoProfileView.topAnchor, constant: 15).isActive = true
        self.profileView.leadingAnchor.constraint(equalTo: self.infoProfileView.leadingAnchor, constant: 10).isActive = true
        self.profileView.trailingAnchor.constraint(equalTo: self.infoProfileView.trailingAnchor, constant: -10).isActive = true
        self.profileView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        //infoView
        self.infoView.topAnchor.constraint(equalTo: self.editingProfile.bottomAnchor, constant: 15).isActive = true
        self.infoView.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.infoView.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.infoView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        //skillsView
        self.skillsView.topAnchor.constraint(equalTo: self.infoView.bottomAnchor, constant: 15).isActive = true
        self.skillsView.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.skillsView.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.skillsView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        //aboutMySelfView
        self.aboutMySelfView.topAnchor.constraint(equalTo: self.skillsView.bottomAnchor, constant: 15).isActive = true
        self.aboutMySelfView.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.aboutMySelfView.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.aboutMySelfView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        //myProjectView
        self.myProjectView.topAnchor.constraint(equalTo: self.aboutMySelfView.bottomAnchor, constant: 15).isActive = true
        self.myProjectView.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.myProjectView.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.myProjectView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //myDocumentView
        self.myDocumentView.topAnchor.constraint(equalTo: self.myProjectView.bottomAnchor, constant: 15).isActive = true
        self.myDocumentView.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.myDocumentView.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.myDocumentView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //editing profile
        self.editingProfile.topAnchor.constraint(equalTo: self.profileView.bottomAnchor, constant: 15).isActive = true
        self.editingProfile.leadingAnchor.constraint(equalTo: self.profileView.leadingAnchor).isActive = true
        self.editingProfile.widthAnchor.constraint(equalToConstant: 190).isActive = true
        self.editingProfile.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //export archive
        self.exportArchive.topAnchor.constraint(equalTo: self.editingProfile.topAnchor).isActive = true
        self.exportArchive.trailingAnchor.constraint(equalTo: self.profileView.trailingAnchor).isActive = true
        self.exportArchive.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.exportArchive.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
