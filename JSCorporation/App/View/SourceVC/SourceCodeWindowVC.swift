//
//  SourceCodeWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 20/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class SourceCodeWindowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    private let sourceCodeLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Исходный код"
        return lbl
    }()
    
    private let downloadAllFiles: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Скачать всё", for: .normal)
        btn.titleLabel?.font = UIFont.customFont13
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.borderColor = UIColor.cyanCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let editNewFile: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Создать новый файл", for: .normal)
        btn.titleLabel?.font = UIFont.customFont13
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.grayCustom
        btn.layer.borderColor = UIColor.gray.cgColor
//        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let downloadFile: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Загрузить файл", for: .normal)
        btn.titleLabel?.font = UIFont.customFont13
        btn.layer.borderWidth = 0.5
        btn.backgroundColor = UIColor.grayCustom
        btn.layer.borderColor = UIColor.gray.cgColor
//        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let sourceCodeTable: UITableView = {
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
        self.view.addSubview(sourceCodeLabel)
        self.view.addSubview(downloadAllFiles)
        self.view.addSubview(sourceCodeTable)
        self.view.addSubview(editNewFile)
        self.view.addSubview(downloadFile)
        
        //other methods
        anchorConstraint()
        editTableView()
        
    }
    
    //MARK: Methods
    func editTableView() {
        self.sourceCodeTable.delegate = self
        self.sourceCodeTable.dataSource = self
        self.sourceCodeTable.backgroundColor = UIColor.lightBlackCustom
        self.sourceCodeTable.register(SourceCodeCell.self, forCellReuseIdentifier: SourceCodeCell.idCell)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sourceCodeTable.dequeueReusableCell(withIdentifier: SourceCodeCell.idCell, for: indexPath) as! SourceCodeCell
        
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
   @objc func tappedIsButton(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Создать новый файл":
            print("Editing file")
        case "Загрузить файл":
            print("File download")
        case "Скачать всё":
            print("All files download")
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //source code label
        self.sourceCodeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.sourceCodeLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.sourceCodeLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.sourceCodeLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //edit new file
        self.editNewFile.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.editNewFile.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.editNewFile.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.editNewFile.widthAnchor.constraint(equalToConstant: 160).isActive = true
        
        //download file
        self.downloadFile.bottomAnchor.constraint(equalTo: self.editNewFile.bottomAnchor).isActive = true
        self.downloadFile.leadingAnchor.constraint(equalTo: self.editNewFile.trailingAnchor).isActive = true
        self.downloadFile.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.downloadFile.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //download all files
        self.downloadAllFiles.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.downloadAllFiles.bottomAnchor.constraint(equalTo: self.editNewFile.bottomAnchor).isActive = true
        self.downloadAllFiles.leadingAnchor.constraint(equalTo: self.downloadFile.trailingAnchor, constant: 10).isActive = true
        self.downloadAllFiles.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //source code table
        self.sourceCodeTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.sourceCodeTable.topAnchor.constraint(equalTo: self.sourceCodeLabel.bottomAnchor, constant: 10).isActive = true
        self.sourceCodeTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.sourceCodeTable.bottomAnchor.constraint(equalTo: self.downloadAllFiles.topAnchor, constant: -10).isActive = true
    }
}

class SourceCodeCell: UITableViewCell {
    
    //MARK: Properties
    static let idCell = "SourceCodeCellIdentifier"
    
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
