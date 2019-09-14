//
//  EntranceWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 02/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class EntranceWindowVC: UIViewController {

    //MARK: Properties
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
    
    private let labelEntrance: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Вход"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.customFont22
        lbl.font = UIFont.customBold28
        return lbl
    }()
    
    private let entranceButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.customFont22
        btn.titleLabel?.font = UIFont.customBold22
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
        btn.titleLabel?.font = UIFont.customFont19
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
        btn.titleLabel?.font = UIFont.customFont19
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
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let passwordTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Пароль"
        txf.isSecureTextEntry = true
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let labelCenterBlack: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "|"
        lbl.textColor = UIColor.black
        lbl.font = UIFont.customFont22
        return lbl
    }()

    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(viewEntrance)
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
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let checkResult = checkUserDate()
        if !checkResult {
            showLoginError()
        }
        return checkResult
    }
    
    func checkUserDate() -> Bool {
        let login = eMailTextField.text!
        let password = passwordTextField.text!
        if login == "" && password == "" {
            let vc = MyProfileVC()
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
            return true
        } else {
            return false
        }
    }
    
    func showLoginError() {
        let alter = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alter.addAction(action)
        present(alter, animated: true, completion: nil)
    }
    
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Войти":
            let checkResult = checkUserDate()
            if !checkResult {
                showLoginError()
            }
        case "Регистрация":
            let vc = RegistrationVC()
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        case "Забыли пароль?":
            let vc = RecoveryPasswordVC()
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //View Entrance
        self.viewEntrance.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.viewEntrance.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.viewEntrance.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.viewEntrance.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
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
