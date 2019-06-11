//
//  EntranceVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Вход
class EntranceVC: UIViewController {
    
    //Properties
    private let logoMops: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "MopsLogo")
        img.image = image
        return img
    }()
    
    private let viewEntrance: UIView = {
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
    
    private let labelEntrance: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Вход"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.fontSideMenu
        lbl.font = UIFont.boldSystemFont(ofSize: 28)
        return lbl
    }()
    
    private let entranceButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.fontSideMenu
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        btn.setTitle("Войти", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let passwordButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.setTitle("Забыли пароль?", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let registrationButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.setTitle("Регистрация", for: .normal)
        btn.setTitleColor(UIColor.cyanCustom, for: .normal)
        btn.backgroundColor = UIColor.snowCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let eMailTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Email"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let passwordTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Пароль"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let labelCenterBlack: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "|"
        lbl.textColor = UIColor.black
        lbl.font = UIFont.fontSideMenu
        return lbl
    }()

    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(logoMops)
        self.view.addSubview(viewEntrance)
        self.view.addSubview(logoJSGrey)
        
        //view entrance
        self.viewEntrance.addSubview(labelEntrance)
        self.viewEntrance.addSubview(entranceButton)
        self.viewEntrance.addSubview(passwordButton)
        self.viewEntrance.addSubview(registrationButton)
        self.viewEntrance.addSubview(eMailTextField)
        self.viewEntrance.addSubview(passwordTextField)
        self.viewEntrance.addSubview(labelCenterBlack)
        
        //other methods
        anchorConstraint()
    }
    
    //MARK: Methods
   
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Войти":
            let vc = MyProfileVC()
            self.present(vc, animated: true, completion: nil)
        case "Регистрация":
            let vc = RegistrationVC()
            self.present(vc, animated: true, completion: nil)
        case "Забыли пароль?":
            let vc = RecoveryPasswordVC()
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Logo Mops
        self.logoMops.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoMops.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        self.logoMops.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.logoMops.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //View Entrance
        self.viewEntrance.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.viewEntrance.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.viewEntrance.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.viewEntrance.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //Logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Label Entrance
        self.labelEntrance.centerXAnchor.constraint(equalTo: self.viewEntrance.centerXAnchor).isActive = true
        self.labelEntrance.topAnchor.constraint(equalTo: self.viewEntrance.topAnchor, constant: 10).isActive = true
        self.labelEntrance.widthAnchor.constraint(equalToConstant: 70).isActive = true
        self.labelEntrance.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Email Text Field
        self.eMailTextField.topAnchor.constraint(equalTo: self.viewEntrance.topAnchor, constant: 70).isActive = true
        self.eMailTextField.leadingAnchor.constraint(equalTo: self.viewEntrance.leadingAnchor, constant: 25).isActive = true
        self.eMailTextField.trailingAnchor.constraint(equalTo: self.viewEntrance.trailingAnchor, constant: -25).isActive = true
        self.eMailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //Text Field Password
        self.passwordTextField.topAnchor.constraint(equalTo: self.eMailTextField.bottomAnchor, constant: 15).isActive = true
        self.passwordTextField.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.passwordTextField.trailingAnchor.constraint(equalTo: self.eMailTextField.trailingAnchor).isActive = true
        self.passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //Button Entrance
        self.entranceButton.centerXAnchor.constraint(equalTo: self.viewEntrance.centerXAnchor).isActive = true
        self.entranceButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 15).isActive = true
        self.entranceButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.entranceButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Button Password
        self.passwordButton.trailingAnchor.constraint(equalTo: self.labelCenterBlack.leadingAnchor, constant: -5).isActive = true
        self.passwordButton.bottomAnchor.constraint(equalTo: self.viewEntrance.bottomAnchor, constant: -18).isActive = true
        
        //Button Registration
        self.registrationButton.leadingAnchor.constraint(equalTo: self.labelCenterBlack.trailingAnchor, constant: 5).isActive = true
        self.registrationButton.bottomAnchor.constraint(equalTo: self.viewEntrance.bottomAnchor, constant: -18).isActive = true
        
        //Лейбл между кнопками "Забыли пароль?" и "Регистрация"
        self.labelCenterBlack.centerXAnchor.constraint(equalTo: self.viewEntrance.centerXAnchor).isActive = true
        self.labelCenterBlack.bottomAnchor.constraint(equalTo: self.viewEntrance.bottomAnchor, constant: -20).isActive = true
    }
}
