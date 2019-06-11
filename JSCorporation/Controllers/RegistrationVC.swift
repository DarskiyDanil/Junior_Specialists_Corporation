//
//  RegistrationVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Регистрация
class RegistrationVC: UIViewController, UIGestureRecognizerDelegate {

    //Properties
    private let registrationView: UIView = {
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
    
    private let registrationLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Регистрация"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.fontSideMenu
        lbl.font = UIFont.boldSystemFont(ofSize: 28)
        return lbl
    }()
    
    private let registrationButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        btn.setTitle("Зарегистрироваться", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let familyTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Фамилия"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let firstNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Имя"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let secondNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Отчество"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let sityTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Город"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let mobileTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Тел:"
        txf.font = UIFont.fontSideMenu
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
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
    
    //кто вы? лейбл
    //innovator бтн лейбл
    //specialist бтн лейбл
    //mentor бтн лейбл
    //projectManager бтн лейбл
    //принятие условия политики конфиденциальности бтн лейбл
    
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(registrationView)
        self.view.addSubview(logoJSGrey)
        
        //registration view
        self.registrationView.addSubview(registrationLabel)
        self.registrationView.addSubview(registrationButton)
        self.registrationView.addSubview(familyTextField)
        self.registrationView.addSubview(firstNameTextField)
        self.registrationView.addSubview(secondNameTextField)
        self.registrationView.addSubview(sityTextField)
        self.registrationView.addSubview(mobileTextField)
        self.registrationView.addSubview(eMailTextField)
        
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
        let vc = RegistrationWinVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Registration View
        self.registrationView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 55).isActive = true
        self.registrationView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        self.registrationView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        self.registrationView.bottomAnchor.constraint(equalTo: self.logoJSGrey.topAnchor, constant: -25).isActive = true
        
        //logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Registration Label
        self.registrationLabel.centerXAnchor.constraint(equalTo: self.registrationView.centerXAnchor).isActive = true
        self.registrationLabel.topAnchor.constraint(equalTo: self.registrationView.topAnchor, constant: 10).isActive = true
        self.registrationLabel.widthAnchor.constraint(equalToConstant: 175).isActive = true
        self.registrationLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Registration Button
        self.registrationButton.centerXAnchor.constraint(equalTo: self.registrationView.centerXAnchor).isActive = true
        self.registrationButton.bottomAnchor.constraint(equalTo: self.registrationView.bottomAnchor, constant: -15).isActive = true
        self.registrationButton.widthAnchor.constraint(equalToConstant: 205).isActive = true
        self.registrationButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Family Text field
        self.familyTextField.topAnchor.constraint(equalTo: self.registrationView.topAnchor, constant: 60).isActive = true
        self.familyTextField.leadingAnchor.constraint(equalTo: self.registrationView.leadingAnchor, constant: 25).isActive = true
        self.familyTextField.trailingAnchor.constraint(equalTo: self.registrationView.trailingAnchor, constant: -25).isActive = true
        
        //First Name Text Field
        self.firstNameTextField.topAnchor.constraint(equalTo: self.familyTextField.bottomAnchor, constant: 15).isActive = true
        self.firstNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.firstNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Second Name Text Field
        self.secondNameTextField.topAnchor.constraint(equalTo: self.firstNameTextField.bottomAnchor, constant: 15).isActive = true
        self.secondNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.secondNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Sity Text Field
        self.sityTextField.topAnchor.constraint(equalTo: self.secondNameTextField.bottomAnchor, constant: 15).isActive = true
        self.sityTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.sityTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Mobile Text Field
        self.mobileTextField.topAnchor.constraint(equalTo: self.sityTextField.bottomAnchor, constant: 15).isActive = true
        self.mobileTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.mobileTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Email Text Field
        self.eMailTextField.topAnchor.constraint(equalTo: self.mobileTextField.bottomAnchor, constant: 15).isActive = true
        self.eMailTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.eMailTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
    }
}
