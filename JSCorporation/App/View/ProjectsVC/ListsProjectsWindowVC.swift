//
//  ListsProjectsWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 23/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class ListsProjectsWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let listProjectTable: UITableView = {
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
        self.view.addSubview(listProjectTable)
        
        //other methods
        anchorConstraint()
        editTableView()
    }
    
    //MARK: Methods
    func editTableView() {
        self.listProjectTable.delegate = self
        self.listProjectTable.dataSource = self
        self.listProjectTable.backgroundColor = UIColor.cyanCustom
        self.listProjectTable.register(ListProjectCell.self, forCellReuseIdentifier: ListProjectCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listProjectTable.dequeueReusableCell(withIdentifier: ListProjectCell.idCell, for: indexPath) as! ListProjectCell
        
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
        self.listProjectTable.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.listProjectTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.listProjectTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.listProjectTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

class ListProjectCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "listProjectCellIdentifier"
    
    var avatar: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "26profilesAvatarUsers")
        return img
    }()
    
    let projectFirstName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Название"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let projectLastName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "проекта"
        lbl.font = UIFont.customFont17
        lbl.font = UIFont.customBold17
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let direction: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Направление:"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let directionTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "TechNet"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    let productStage: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Стадия продукта:"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.blackCostum
        return lbl
    }()
    
    let productStageTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Концепция"
        lbl.font = UIFont.customFont15
        lbl.textColor = UIColor.cyanCustom
        return lbl
    }()
    
    //MARK: life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(avatar)
        addSubview(projectFirstName)
        addSubview(projectLastName)
        addSubview(direction)
        addSubview(directionTitle)
        addSubview(productStage)
        addSubview(productStageTitle)
        
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
        
        //projectFirstName
        self.projectFirstName.topAnchor.constraint(equalTo: self.avatar.topAnchor).isActive = true
        self.projectFirstName.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.projectFirstName.widthAnchor.constraint(equalToConstant: 85).isActive = true
        
        //first name
        self.projectLastName.topAnchor.constraint(equalTo: self.projectFirstName.topAnchor).isActive = true
        self.projectLastName.leadingAnchor.constraint(equalTo: self.projectFirstName.trailingAnchor, constant: 10).isActive = true
        self.projectLastName.widthAnchor.constraint(equalToConstant: 85).isActive = true
        
        //direction
        self.direction.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.direction.topAnchor.constraint(equalTo: self.projectFirstName.bottomAnchor, constant: -5).isActive = true
        self.direction.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        //directionTitle
        self.directionTitle.leadingAnchor.constraint(equalTo: self.direction.trailingAnchor, constant: 10).isActive = true
        self.directionTitle.bottomAnchor.constraint(equalTo: self.direction.bottomAnchor).isActive = true
        self.directionTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        //productStage
        self.productStage.leadingAnchor.constraint(equalTo: self.avatar.trailingAnchor, constant: 10).isActive = true
        self.productStage.topAnchor.constraint(equalTo: self.direction.bottomAnchor, constant: 10).isActive = true
        self.productStage.widthAnchor.constraint(equalToConstant: 135).isActive = true
        
        //productStageTitle
        self.productStageTitle.leadingAnchor.constraint(equalTo: self.productStage.trailingAnchor, constant: 10).isActive = true
        self.productStageTitle.bottomAnchor.constraint(equalTo: self.productStage.bottomAnchor).isActive = true
        self.productStageTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
}
