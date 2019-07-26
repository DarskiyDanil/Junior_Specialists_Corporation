//
//  TeamWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 26/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class TeamWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let teamLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Команда:"
        return lbl
    }()
    
    private let searchBar: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Поиск по команде"
        txf.font = UIFont.customFont15
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let allTeam: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Вся команда", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.borderColor = UIColor.cyanCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(searchInDocument), for: .touchUpInside)
        return btn
    }()
    
    private let teamTable: UITableView = {
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
        self.view.addSubview(teamLabel)
        self.view.addSubview(searchBar)
        self.view.addSubview(allTeam)
        self.view.addSubview(teamTable)
        
        //other methods
        anchorConstraint()
        editTableView()
        
    }
    
    //MARK: Methods
    func editTableView() {
        self.teamTable.delegate = self
        self.teamTable.dataSource = self
        self.teamTable.backgroundColor = UIColor.lightBlackCustom
        self.teamTable.register(TeamCell.self, forCellReuseIdentifier: TeamCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = teamTable.dequeueReusableCell(withIdentifier: TeamCell.idCell, for: indexPath) as! TeamCell
        
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
    @objc func searchInDocument() {
        print("Tapped is button")
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //my document label
        self.teamLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.teamLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.teamLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.teamLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //search bar
        self.searchBar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.searchBar.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        //all documents
        self.allTeam.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.allTeam.bottomAnchor.constraint(equalTo: self.searchBar.bottomAnchor).isActive = true
        self.allTeam.leadingAnchor.constraint(equalTo: self.searchBar.trailingAnchor, constant: 10).isActive = true
        self.allTeam.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //document table
        self.teamTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.teamTable.topAnchor.constraint(equalTo: self.teamLabel.bottomAnchor, constant: 10).isActive = true
        self.teamTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.teamTable.bottomAnchor.constraint(equalTo: self.allTeam.topAnchor, constant: -10).isActive = true
    }
}

class TeamCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "TeamCellIdentifier"
    
    var avatar: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        return img
    }()
    
    let family: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Фамилия"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let firstName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Имя"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let lastName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Отчество"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let position: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Должность"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    //MARK: life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(avatar)
        addSubview(family)
        addSubview(firstName)
        addSubview(lastName)
        addSubview(position)
        
        backgroundColor = UIColor.snowCustom
        anchorConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    private func anchorConstrains() {
        
        //avatar
        self.avatar.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        self.avatar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        self.avatar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        self.avatar.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        //family
        self.family.topAnchor.constraint(equalTo: self.avatar.topAnchor).isActive = true
        self.family.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.family.widthAnchor.constraint(equalToConstant: 85).isActive = true
        
        //first name
        self.firstName.topAnchor.constraint(equalTo: self.family.topAnchor).isActive = true
        self.firstName.leadingAnchor.constraint(equalTo: self.family.trailingAnchor, constant: 10).isActive = true
        self.firstName.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        //last name
        self.lastName.topAnchor.constraint(equalTo: self.family.topAnchor).isActive = true
        self.lastName.leadingAnchor.constraint(equalTo: self.firstName.trailingAnchor, constant: 10).isActive = true
        self.lastName.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //position
        self.position.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.position.topAnchor.constraint(equalTo: self.family.bottomAnchor, constant: -5).isActive = true
        self.position.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
