//
//  ListInnovatorsWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 23/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ListInnovatorsWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let listInnovatorsTable: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tv.layer.cornerRadius = 5
        return tv
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(listInnovatorsTable)
        
        //other methods
        anchorConstraint()
        editTableView()
    }
    
    //MARK: Methods
    func editTableView() {
        self.listInnovatorsTable.delegate = self
        self.listInnovatorsTable.dataSource = self
        self.listInnovatorsTable.backgroundColor = UIColor.cyanCustom
        self.listInnovatorsTable.register(ListInnovatorsCell.self, forCellReuseIdentifier: ListInnovatorsCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listInnovatorsTable.dequeueReusableCell(withIdentifier: ListInnovatorsCell.idCell, for: indexPath) as! ListInnovatorsCell
        
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
    
    //MARK: Objc Methods
    
    //MARK: Constrains
    private func anchorConstraint() {
        //project table
        self.listInnovatorsTable.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.listInnovatorsTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.listInnovatorsTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.listInnovatorsTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

class ListInnovatorsCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "listInnovatorsCellIdentifier"
    
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
    
    let city: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Город:"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let cityTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Москва"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    let speciality: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Специальность:"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let specialityTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Программист"
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
        addSubview(city)
        addSubview(cityTitle)
        addSubview(speciality)
        addSubview(specialityTitle)
        
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
        
        //city
        self.city.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.city.topAnchor.constraint(equalTo: self.family.bottomAnchor, constant: -5).isActive = true
        self.city.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        //cityTitle
        self.cityTitle.leadingAnchor.constraint(equalTo: self.city.trailingAnchor, constant: 10).isActive = true
        self.cityTitle.bottomAnchor.constraint(equalTo: self.city.bottomAnchor).isActive = true
        self.cityTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        //speciality
        self.speciality.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.speciality.topAnchor.constraint(equalTo: self.city.bottomAnchor, constant: 10).isActive = true
        self.speciality.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //specialityTitle
        self.specialityTitle.leadingAnchor.constraint(equalTo: self.speciality.trailingAnchor, constant: 10).isActive = true
        self.specialityTitle.bottomAnchor.constraint(equalTo: self.speciality.bottomAnchor).isActive = true
        self.specialityTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
}
