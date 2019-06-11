//
//  RecoveryPasswordWinVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Восстановление пароля завершено
class RecoveryPasswordWinVC: UIViewController, UIGestureRecognizerDelegate {

    //Properties
    private let logoCat: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "CatLogo")
        img.image = image
        return img
    }()
    
    private let recoveryPasswordWinView: UIView = {
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
    
    private let logoJSGrey: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "JScorplogos1grey")
        img.image = image
        return img
    }()
    
    private let recoveryPasswordWinLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Восстановление пароля"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.btnSize
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        return lbl
    }()
    
    private let newPassword: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Новый пароль"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let replayPassword: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Повторите пароль"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let editingPassword: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        btn.setTitle("Изменить пароль", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let support: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        btn.setTitle("Поддержка", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(logoCat)
        self.view.addSubview(recoveryPasswordWinView)
        self.view.addSubview(logoJSGrey)
        
        //recoveryPasswordWinView
        self.recoveryPasswordWinView.addSubview(recoveryPasswordWinLabel)
        self.recoveryPasswordWinView.addSubview(newPassword)
        self.recoveryPasswordWinView.addSubview(replayPassword)
        self.recoveryPasswordWinView.addSubview(editingPassword)
        self.recoveryPasswordWinView.addSubview(support)
        
        //other methods
        anchorConstraint()
        tappedIsImage()
    }
    
    //MARK: Methods
    private func tappedIsImage() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedIsImg(_:)))
        self.logoJSGrey.addGestureRecognizer(tap)
        self.logoJSGrey.isUserInteractionEnabled = true
    }
    
    //MARK: Objc methods
    @objc func tappedIsImg(_ sender: AnyObject) {
        let vc = EntranceVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Изменить пароль":
            print("Пароль изменен")
            //на время теста приложения
            let vc = MyProfileVC()
            self.present(vc, animated: true, completion: nil)
        case "Поддержка":
            print("Поддержка")
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Logotype dog
        self.logoCat.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoCat.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        self.logoCat.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.logoCat.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Recovery Password Win View
        self.recoveryPasswordWinView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.recoveryPasswordWinView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.recoveryPasswordWinView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.recoveryPasswordWinView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Recovery Password Win Label
        self.recoveryPasswordWinLabel.topAnchor.constraint(equalTo: self.recoveryPasswordWinView.topAnchor, constant: 10).isActive = true
        self.recoveryPasswordWinLabel.centerXAnchor.constraint(equalTo: self.recoveryPasswordWinView.centerXAnchor).isActive = true
        self.recoveryPasswordWinLabel.widthAnchor.constraint(equalToConstant: 220).isActive = true
        self.recoveryPasswordWinLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //New password Text Field
        self.newPassword.topAnchor.constraint(equalTo: self.recoveryPasswordWinLabel.bottomAnchor, constant: 15).isActive = true
        self.newPassword.leadingAnchor.constraint(equalTo: self.recoveryPasswordWinView.leadingAnchor, constant: 50).isActive = true
        self.newPassword.trailingAnchor.constraint(equalTo: self.recoveryPasswordWinView.trailingAnchor, constant: -50).isActive = true
        
        //Replay password
        self.replayPassword.topAnchor.constraint(equalTo: self.newPassword.bottomAnchor, constant: 15).isActive = true
        self.replayPassword.leadingAnchor.constraint(equalTo: self.recoveryPasswordWinView.leadingAnchor, constant: 50).isActive = true
        self.replayPassword.trailingAnchor.constraint(equalTo: self.recoveryPasswordWinView.trailingAnchor, constant: -50).isActive = true
        
        //Editing Password
        self.editingPassword.topAnchor.constraint(equalTo: self.replayPassword.bottomAnchor, constant: 15).isActive = true
        self.editingPassword.centerXAnchor.constraint(equalTo: self.recoveryPasswordWinView.centerXAnchor).isActive = true
        self.editingPassword.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.editingPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Support
        self.support.topAnchor.constraint(equalTo: self.editingPassword.bottomAnchor, constant: 15).isActive = true
        self.support.centerXAnchor.constraint(equalTo: self.recoveryPasswordWinView.centerXAnchor).isActive = true
        self.support.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.support.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
