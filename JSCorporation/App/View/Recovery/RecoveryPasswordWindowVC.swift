//
//  RecoveryPasswordWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class RecoveryPasswordWindowVC: UIViewController {

    //MARK: Properties
    private let recoveryPasswordView: UIView = {
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
    
    private let recoveryPasswordLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Восстановление пароля"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.customFont19
        lbl.font = UIFont.customBold18
        return lbl
    }()
    
    private let eMailTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Email"
        txf.font = UIFont.customFont22
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let toSendALatter: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.customFont19
        btn.titleLabel?.font = UIFont.customBold19
        btn.setTitle("Отправить письмо", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let didNotReceiveTheLetter: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.customFont19
        btn.titleLabel?.font = UIFont.customBold19
        btn.setTitle("Не пришло письмо?", for: .normal)
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
        self.view.addSubview(recoveryPasswordView)
        
        //recoveryPasswordView
        self.recoveryPasswordView.addSubview(recoveryPasswordLabel)
        self.recoveryPasswordView.addSubview(eMailTextField)
        self.recoveryPasswordView.addSubview(toSendALatter)
        self.recoveryPasswordView.addSubview(didNotReceiveTheLetter)
        
        //other methods
        anchorConstraint()
    }
    
    //MARK: Methods
    
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        //на время теста приложения
        switch sender.titleLabel?.text {
        case "Отправить письмо":
            print("Письмо отправлено")
            let vc = RecoveryPasswordWinVC()
            self.present(vc, animated: true, completion: nil)
        case "Не пришло письмо?":
            print("Письмо не пришло")
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //recoveryPasswordView
        self.recoveryPasswordView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.recoveryPasswordView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.recoveryPasswordView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.recoveryPasswordView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //Recovery Password Label
        self.recoveryPasswordLabel.topAnchor.constraint(equalTo: self.recoveryPasswordView.topAnchor, constant: 10).isActive = true
        self.recoveryPasswordLabel.centerXAnchor.constraint(equalTo: self.recoveryPasswordView.centerXAnchor).isActive = true
        self.recoveryPasswordLabel.widthAnchor.constraint(equalToConstant: 220).isActive = true
        self.recoveryPasswordLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Email Text Field
        self.eMailTextField.topAnchor.constraint(equalTo: self.recoveryPasswordLabel.bottomAnchor, constant: 15).isActive = true
        self.eMailTextField.leadingAnchor.constraint(equalTo: self.recoveryPasswordView.leadingAnchor, constant: 50).isActive = true
        self.eMailTextField.trailingAnchor.constraint(equalTo: self.recoveryPasswordView.trailingAnchor, constant: -50).isActive = true
        
        //To Send A Latter
        self.toSendALatter.topAnchor.constraint(equalTo: self.eMailTextField.bottomAnchor, constant: 30).isActive = true
        self.toSendALatter.centerXAnchor.constraint(equalTo: self.recoveryPasswordView.centerXAnchor).isActive = true
        self.toSendALatter.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.toSendALatter.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Did Not Receive The Letter
        self.didNotReceiveTheLetter.topAnchor.constraint(equalTo: self.toSendALatter.bottomAnchor, constant: 30).isActive = true
        self.didNotReceiveTheLetter.centerXAnchor.constraint(equalTo: self.recoveryPasswordView.centerXAnchor).isActive = true
        self.didNotReceiveTheLetter.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.didNotReceiveTheLetter.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
