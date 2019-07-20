//
//  ObjectDesignProjectWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 20/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ObjectDesignProjectWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let myProjectLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Мои проекты:"
        return lbl
    }()
    
    private let searchBarIsProject: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Поиск по проектам"
        txf.font = UIFont.customFont15
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let editProjecSourceCodet: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Создать проект", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.borderColor = UIColor.cyanCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(editProject), for: .touchUpInside)
        return btn
    }()
    
    private let objectDesignProjectTable: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return tv
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(myProjectLabel)
        self.view.addSubview(searchBarIsProject)
        self.view.addSubview(editProjecSourceCodet)
        self.view.addSubview(objectDesignProjectTable)
        
        //other methods
        anchorConstraint()
        editTableView()
        
    }
    
    //MARK: Methods
    func editTableView() {
        self.objectDesignProjectTable.delegate = self
        self.objectDesignProjectTable.dataSource = self
        self.objectDesignProjectTable.backgroundColor = UIColor.lightBlackCustom
        self.objectDesignProjectTable.register(ObjectDesignProjectCell.self, forCellReuseIdentifier: ObjectDesignProjectCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = objectDesignProjectTable.dequeueReusableCell(withIdentifier: ObjectDesignProjectCell.idCell, for: indexPath) as! ObjectDesignProjectCell
        
        // выделение ячейки
        let viewCell = UIView()
        viewCell.backgroundColor = UIColor.cyanCustom
        cell.selectedBackgroundView = viewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    //MARK: Objc Methods
    @objc func editProject() {
        print("project editing")
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //my document label
        self.myProjectLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.myProjectLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.myProjectLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.myProjectLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //search bar
        self.searchBarIsProject.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.searchBarIsProject.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.searchBarIsProject.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        //all documents
        self.editProjecSourceCodet.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.editProjecSourceCodet.bottomAnchor.constraint(equalTo: self.searchBarIsProject.bottomAnchor).isActive = true
        self.editProjecSourceCodet.leadingAnchor.constraint(equalTo: self.searchBarIsProject.trailingAnchor, constant: 10).isActive = true
        self.editProjecSourceCodet.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //document table
        self.objectDesignProjectTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.objectDesignProjectTable.topAnchor.constraint(equalTo: self.myProjectLabel.bottomAnchor, constant: 10).isActive = true
        self.objectDesignProjectTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.objectDesignProjectTable.bottomAnchor.constraint(equalTo: self.editProjecSourceCodet.topAnchor, constant: -10).isActive = true
    }
}

class ObjectDesignProjectCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "ObjectDesignProjectCellIdentifier"
    
    let icon: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        img.layer.cornerRadius = 5
        return img
    }()
    
    let titleDocument: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Название документа"
        lbl.font = UIFont.customFont17
        return lbl
    }()
    
    //MARK: life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(icon)
        addSubview(titleDocument)
        
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
        self.icon.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        //title project
        self.titleDocument.centerYAnchor.constraint(equalTo: self.icon.centerYAnchor).isActive = true
        self.titleDocument.leadingAnchor.constraint(equalTo: self.icon.trailingAnchor, constant: 10).isActive = true
        self.titleDocument.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
    }
}
