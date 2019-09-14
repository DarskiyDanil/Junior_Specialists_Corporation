//
//  MyProjectWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class MyProjectWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {

    //MARK: Properties
    private let myProjectLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Мои проекты:"
        return lbl
    }()
    
    private let searchBar: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Поиск по проектам"
        txf.font = UIFont.customFont15
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let allProject: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Все проекты", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.borderColor = UIColor.cyanCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(searchInProject), for: .touchUpInside)
        return btn
    }()
    
    private let projectTable: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return tv
    }()
   
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(myProjectLabel)
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(searchBar)
        self.view.addSubview(allProject)
        self.view.addSubview(projectTable)
        
        //other methods
        anchorConstraint()
        editTableView()
    }
    
    //MARK: Methods
    func editTableView() {
        self.projectTable.delegate = self
        self.projectTable.dataSource = self
        self.projectTable.backgroundColor = UIColor.cyanCustom
        self.projectTable.register(ProjectCell.self, forCellReuseIdentifier: ProjectCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = projectTable.dequeueReusableCell(withIdentifier: ProjectCell.idCell, for: indexPath) as! ProjectCell
        
        // выделение ячейки
        let viewCell = UIView()
        viewCell.backgroundColor = UIColor.cyanCustom
        cell.selectedBackgroundView = viewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch indexPath.count {
//        case 0:
//            let vc = MyProfileVC()
//            self.present(vc, animated: true, completion: nil)
//        case 1:
//            let vc = MyProjectVC()
//            self.present(vc, animated: true, completion: nil)
//        case 2:
//            let vc = MyDocumentsVC()
//            self.present(vc, animated: true, completion: nil)
//        default:
//            break
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    private func tappedIsImg() {
        
    }
    
    //MARK: Objc Methods
    @objc func searchInProject() {
        let vc = MyProjectVC()
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //my project label
        self.myProjectLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.myProjectLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.myProjectLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.myProjectLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //search bar
        self.searchBar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.searchBar.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        //all project
        self.allProject.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.allProject.bottomAnchor.constraint(equalTo: self.searchBar.bottomAnchor).isActive = true
        self.allProject.leadingAnchor.constraint(equalTo: self.searchBar.trailingAnchor, constant: 10).isActive = true
        self.allProject.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //project table
        self.projectTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.projectTable.topAnchor.constraint(equalTo: self.myProjectLabel.bottomAnchor, constant: 10).isActive = true
        self.projectTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.projectTable.bottomAnchor.constraint(equalTo: self.allProject.topAnchor, constant: -10).isActive = true
    }
}

class ProjectCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "ProjectCellIdentifier"
    
    let icon: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        img.layer.cornerRadius = 5
        return img
    }()
    
    let titleProject: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Название проекта"
        lbl.font = UIFont.customFont15
        return lbl
    }()
    
    let titleCompany: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Название компании"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    let someInfoProject: UITextView = {
        let txt = UITextView()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.font = UIFont.customFont13
        txt.text = "Up am intention on dependent questions oh elsewhere september. No betrayed pleasure possible jointure we in throwing. And can event rapid any shall woman green. Hope they dear who its bred. Smiling nothing affixed he carried it clothes calling he no. Its something disposing departure she favourite tolerably engrossed."
        return txt
    }()
    
    //MARK: life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(icon)
        addSubview(titleProject)
        addSubview(titleCompany)
        addSubview(someInfoProject)
        
        backgroundColor = UIColor.snowCustom
        anchorConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    private func anchorConstrains() {
        
        //icon
        self.icon.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        self.icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        self.icon.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        self.icon.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        //title project
        self.titleProject.topAnchor.constraint(equalTo: self.icon.topAnchor).isActive = true
        self.titleProject.leadingAnchor.constraint(equalTo: self.icon.trailingAnchor, constant: 10).isActive = true
        self.titleProject.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //title company
        self.titleCompany.topAnchor.constraint(equalTo: self.titleProject.bottomAnchor, constant: 2).isActive = true
        self.titleCompany.leadingAnchor.constraint(equalTo: self.icon.trailingAnchor, constant: 10).isActive = true
        self.titleCompany.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //some info project
        self.someInfoProject.bottomAnchor.constraint(equalTo: self.icon.bottomAnchor).isActive = true
        self.someInfoProject.leadingAnchor.constraint(equalTo: self.icon.trailingAnchor, constant: 10).isActive = true
        self.someInfoProject.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        self.someInfoProject.topAnchor.constraint(equalTo: self.titleCompany.bottomAnchor, constant: 4).isActive = true
    }
}
