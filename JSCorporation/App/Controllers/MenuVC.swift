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
    
    let section = [ "", "Материалы", "Управление", "JS Corporation", "Профиль"]
    
    let items = [["Мой профиль", "Мои документы", "Мои проекты"], ["Исходный код", "Объекты дизайна"], ["Специалисты", "Новаторы", "Проекты", "Кураторы", "Менторы", "Стажировка", "Заявки"], ["Поддержка", "Контакты", "Web-site"],["Настройки" , "Выход"]]
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(customNavigationBar)
        self.customNavigationBar.addSubview(pushMenu)
        self.customNavigationBar.addSubview(logoJS)
        self.customNavigationBar.addSubview(menuImg)
        self.view.addSubview(menuTable)
        
        //other methods
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
        return self.items[section].count//3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.section.count//5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTable.dequeueReusableCell(withIdentifier: MenuCell.idCell, for: indexPath) as! MenuCell
        
//        let menuModel = MenuModel(rawValue: indexPath.row)
//        cell.icon.image = menuModel?.image
//        cell.titleMenu.text = menuModel?.description
        
        cell.titleMenu.text = self.items[indexPath.section][indexPath.row]
        
        // выделение ячейки
        let viewCell = UIView()
        viewCell.backgroundColor = UIColor.cyanCustom
        cell.selectedBackgroundView = viewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let lbl : UILabel = UILabel()
        if(section == 1){
            lbl.textColor = UIColor.cyanCustom
            lbl.backgroundColor = UIColor.clear
            lbl.font = UIFont.customFont17
            lbl.text = "    Материалы"
        }else if (section == 2){
            lbl.textColor = UIColor.cyanCustom
            lbl.backgroundColor = UIColor.clear
            lbl.font = UIFont.customFont17
            lbl.text = "    Управление"
        }else if (section == 3){
            lbl.textColor = UIColor.cyanCustom
            lbl.backgroundColor = UIColor.clear
            lbl.font = UIFont.customFont17
            lbl.text = "    JS Corporation"
        }else if (section == 4){
            lbl.textColor = UIColor.cyanCustom
            lbl.backgroundColor = UIColor.clear
            lbl.font = UIFont.customFont17
            lbl.text = "    Профиль"
        }
        return lbl
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch self.items[indexPath.section][indexPath.row] {
        case "Мой профиль":
            let vc = MyProfileVC()
            self.present(vc, animated: true, completion: nil)
        case "Мои проекты":
            let vc = MyProjectVC()
            self.present(vc, animated: true, completion: nil)
        case "Мои документы":
            let vc = MyDocumentsVC()
            self.present(vc, animated: true, completion: nil)
        case "Исходный код":
            let vc = SourceVC()
            self.present(vc, animated: true, completion: nil)
        case "Объекты дизайна":
            let vc = ObjectsDesignVC()
            self.present(vc, animated: true, completion: nil)
        case "Специалисты":
            let vc = SpecialistsVC()
            self.present(vc, animated: true, completion: nil)
        case "Новаторы":
            let vc = InnovatorsVC()
            self.present(vc, animated: true, completion: nil)
        case "Проекты":
            let vc = ProjectsVC()
            self.present(vc, animated: true, completion: nil)
        case "Кураторы":
            let vc = CuratorsVC()
            self.present(vc, animated: true, completion: nil)
        case "Менторы":
            let vc = MentorsVC()
            self.present(vc, animated: true, completion: nil)
        case "Стажировка":
            print("Стажировка")
        case "Заявки":
            let vc = ApplicationsVC()
            self.present(vc, animated: true, completion: nil)
        case "Поддержка":
            print("Поддержка")
        case "Контакты":
            print("Контакты")
        case "Web-site":
            print("Web-site")
        case "Настройки":
            print("Настройки")
        case "Выход":
            let vc = EntranceVC()
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
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
        let vc = MenuVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsPushMenu(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Внимание!", message: "Раздел 'Уведомления' находится в разработке.", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
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
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        return img
    }()
    
    let titleMenu: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Кастомный текст"
        lbl.font = UIFont.customFont22
        lbl.textColor = .white
        return lbl
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
        
        //icon
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        //title menu
        titleMenu.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleMenu.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 22).isActive = true
    }
}
