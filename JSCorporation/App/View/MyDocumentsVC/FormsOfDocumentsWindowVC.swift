//
//  FormsOfDocumentsWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 26/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class FormsOfDocumentsWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let formsOfDocumentLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Бланки документов:"
        return lbl
    }()
    
    private let searchBar: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Поиск по документам"
        txf.font = UIFont.customFont15
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let allFormsOfDocument: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Все документы", for: .normal)
        btn.titleLabel?.font = UIFont.customFont15
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.borderColor = UIColor.cyanCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(searchInDocument), for: .touchUpInside)
        return btn
    }()
    
    private let formsOfDocumentTable: UITableView = {
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
        self.view.addSubview(formsOfDocumentLabel)
        self.view.addSubview(searchBar)
        self.view.addSubview(allFormsOfDocument)
        self.view.addSubview(formsOfDocumentTable)
        
        //other methods
        anchorConstraint()
        editTableView()
        
    }
    
    //MARK: Methods
    private func editTableView() {
        self.formsOfDocumentTable.delegate = self
        self.formsOfDocumentTable.dataSource = self
        self.formsOfDocumentTable.backgroundColor = UIColor.lightBlackCustom
        self.formsOfDocumentTable.register(FormOfDocumentCell.self, forCellReuseIdentifier: FormOfDocumentCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = formsOfDocumentTable.dequeueReusableCell(withIdentifier: FormOfDocumentCell.idCell, for: indexPath) as! FormOfDocumentCell
        
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
        let vc = MyDocumentsVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //my document label
        self.formsOfDocumentLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.formsOfDocumentLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.formsOfDocumentLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.formsOfDocumentLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //search bar
        self.searchBar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.searchBar.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        //all documents
        self.allFormsOfDocument.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.allFormsOfDocument.bottomAnchor.constraint(equalTo: self.searchBar.bottomAnchor).isActive = true
        self.allFormsOfDocument.leadingAnchor.constraint(equalTo: self.searchBar.trailingAnchor, constant: 10).isActive = true
        self.allFormsOfDocument.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //document table
        self.formsOfDocumentTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.formsOfDocumentTable.topAnchor.constraint(equalTo: self.formsOfDocumentLabel.bottomAnchor, constant: 10).isActive = true
        self.formsOfDocumentTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.formsOfDocumentTable.bottomAnchor.constraint(equalTo: self.allFormsOfDocument.topAnchor, constant: -10).isActive = true
    }
}

class FormOfDocumentCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "FormOfDocumentCellIdentifier"
    
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
