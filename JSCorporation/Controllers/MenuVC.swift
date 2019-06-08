//
//  MenuVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Меню
class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {
    
    //MARK: Properties
    private let customNavigationBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blackCostum
        return view
    }()
   
    private let logoJS: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "JScorplogos1blue")
        img.image = image
        return img
    }()
    
    private let pushMenu: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "19PushMenuB")
        img.image = image
        return img
    }()
    
    private var menuImg: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "21MenuB")
        img.image = image
        
        return img
    }()
    
    private let menuTable: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.rowHeight = 50
        return tv
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(customNavigationBar)
        self.customNavigationBar.addSubview(pushMenu)
        self.customNavigationBar.addSubview(logoJS)
        self.customNavigationBar.addSubview(menuImg)
        self.view.addSubview(menuTable)
        
        anchorConstraint()
        customView()
        editTableView()
        tappedIsImg()
    }
    
    //MARK: Methods
    func editTableView() {
        self.menuTable.delegate = self
        self.menuTable.dataSource = self
        self.menuTable.backgroundColor = UIColor.lightBlackCustom
        self.menuTable.separatorStyle = .none
        self.menuTable.register(MenuCell.self, forCellReuseIdentifier: MenuCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTable.dequeueReusableCell(withIdentifier: MenuCell.idCell, for: indexPath) as! MenuCell
        
        let menuModel = MenuModel(rawValue: indexPath.row)
        cell.icon.image = menuModel?.image
        cell.titleMenu.text = menuModel?.description
        
        // выделение ячейки
        let viewCell = UIView()
        viewCell.backgroundColor = UIColor.cyanCustom
        cell.selectedBackgroundView = viewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell = \(indexPath)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.0
    }
    
    private func tappedIsImg() {
        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(tappedIsMenu(_:)))
        self.menuImg.addGestureRecognizer(tapMenu)
        self.menuImg.isUserInteractionEnabled = true
        
        let tapPush = UITapGestureRecognizer(target: self, action: #selector(tappedIsPushMenu(_:)))
        self.pushMenu.addGestureRecognizer(tapPush)
        self.pushMenu.isUserInteractionEnabled = true
    }
    
    private func customView() {
        self.view.backgroundColor = UIColor.white
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: Objc Methods
    @objc func tappedIsMenu(_ sender: AnyObject) {
        print("press button image menu")
    }
    
    @objc func tappedIsPushMenu(_ sender: AnyObject) {
        print("press button image push menu")
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Custom Navigation Bar
        self.customNavigationBar.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.customNavigationBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.customNavigationBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.customNavigationBar.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        //Logo
        self.logoJS.heightAnchor.constraint(equalToConstant: 70).isActive = true
        self.logoJS.widthAnchor.constraint(equalToConstant: 180).isActive = true
        self.logoJS.leadingAnchor.constraint(equalTo: self.customNavigationBar.leadingAnchor, constant: 12).isActive = true
        self.logoJS.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -7).isActive = true

        //Menu
        self.menuImg.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.menuImg.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.menuImg.trailingAnchor.constraint(equalTo: self.customNavigationBar.trailingAnchor, constant: -12).isActive = true
        self.menuImg.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -22).isActive = true

        //Push menu
        self.pushMenu.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.pushMenu.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.pushMenu.trailingAnchor.constraint(equalTo: self.menuImg.leadingAnchor, constant: -12).isActive = true
        self.pushMenu.bottomAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor, constant: -22).isActive = true
        
        //Menu Table
        self.menuTable.topAnchor.constraint(equalTo: self.customNavigationBar.bottomAnchor).isActive = true
        self.menuTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.menuTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.menuTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true

    }
}

//MARK: Ячейка
class MenuCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "MenuCellIdentifier"
    
    let icon: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        
        return iv
    }()
    
    let titleMenu: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Кастомный текст"
        label.font = UIFont.systemFont(ofSize: 22)
        label.font = UIFont(name: "PingFang TC", size: 22)
        label.textColor = .white
        return label
    }()
    
    //MARK: life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(icon)
        addSubview(titleMenu)
        
        backgroundColor = UIColor.lightBlackCustom
        anchorConstrains()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    private func anchorConstrains() {
        
        // iconImageView constaints
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        // myLabel constaints
        titleMenu.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleMenu.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 22).isActive = true
    }
}
