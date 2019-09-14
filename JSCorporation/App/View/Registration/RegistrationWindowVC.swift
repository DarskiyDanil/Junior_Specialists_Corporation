//
//  RegistrationWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 07/07/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class RegistrationWindowVC: UIViewController {

    //MARK: Properties
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
    
    private let registrationLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Регистрация"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.customFont22
        lbl.font = UIFont.customBold28
        return lbl
    }()
    
    private let registrationButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.customFont19
        btn.titleLabel?.font = UIFont.customBold19
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
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let firstNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Имя"
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let secondNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Отчество"
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let sityTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Город"
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let mobileTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Тел:"
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let eMailTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Email"
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let whoIt: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(tappedIsWhoIt), for: .touchUpInside)
        return btn
    }()
    
    private let innovator: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let specialist: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let mentor: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let projectManager: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(selectAnOptionFromTheListed(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let acceptanceOfPrivacyPolicy: UIButton = {
        let btn = UIButton()
        btn.titleLabel?.lineBreakMode  = NSLineBreakMode(rawValue: 1)!
        btn.titleLabel?.textAlignment = NSTextAlignment.center
        btn.addTarget(self, action: #selector(tappedIsAcceptanceOfPrivacyPolicyButton), for: .touchUpInside)
        return btn
    }()

    private let customButton = CustomButton()
    private var acceptanceOfPrivacyPolicyBool: Bool!
    
    private let blue = UIImage(named: "squareBlue")
    private let white = UIImage(named: "squareWhite")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view
        self.view.addSubview(registrationView)
        
        acceptanceOfPrivacyPolicyBool = false
        
        //registration view
        createdByView()
        
        //other methods
        anchorConstraint()
        createByCustomButton()
    }
    
    //MARK: Methods
    private func createdByView() {
        self.registrationView.addSubview(registrationLabel)
        self.registrationView.addSubview(registrationButton)
        self.registrationView.addSubview(familyTextField)
        self.registrationView.addSubview(firstNameTextField)
        self.registrationView.addSubview(secondNameTextField)
        self.registrationView.addSubview(sityTextField)
        self.registrationView.addSubview(mobileTextField)
        self.registrationView.addSubview(eMailTextField)
        self.registrationView.addSubview(whoIt)
        self.registrationView.addSubview(innovator)
        self.registrationView.addSubview(specialist)
        self.registrationView.addSubview(mentor)
        self.registrationView.addSubview(projectManager)
        self.registrationView.addSubview(acceptanceOfPrivacyPolicy)
    }
    
    private func createByCustomButton() {
        customButton.optionCustomButtonFirst(sender: acceptanceOfPrivacyPolicy,
                                        titleLabel: "Принимаю условия политики конфиденциальности", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 262,
                                        nameImg: "squareWhite", imgContentMode: 1,
                                        topImg: 5, leftImg: 1, bottomImg: 25, rightImg: 270,
                                        contentVerticalAligment: 3, widthAnchor: 300, heigthAnchor: 60)
        
        customButton.optionCustomButtonFirst(sender: whoIt, titleLabel: "Кто вы?", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 100,
                                        nameImg: "23Iinformation", imgContentMode: 1,
                                        topImg: 0, leftImg: 99, bottomImg: 0, rightImg: 31,
                                        contentVerticalAligment: 3, widthAnchor: 100, heigthAnchor: 30)
        
        customButton.optionCustomButtonFirst(sender: innovator, titleLabel: "Новатор", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 70,
                                        nameImg: "squareWhite", imgContentMode: 1,
                                        topImg: 0, leftImg: 1, bottomImg: 0, rightImg: 80,
                                        contentVerticalAligment: 3, widthAnchor: 110, heigthAnchor: 30)
        
        customButton.optionCustomButtonFirst(sender: mentor, titleLabel: "Ментор", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 70,
                                        nameImg: "squareWhite", imgContentMode: 1,
                                        topImg: 0, leftImg: 1, bottomImg: 0, rightImg: 80,
                                        contentVerticalAligment: 3, widthAnchor: 110, heigthAnchor: 30)
        
        customButton.optionCustomButtonFirst(sender: specialist, titleLabel: "Специалист", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 90,
                                        nameImg: "squareWhite", imgContentMode: 1,
                                        topImg: 0, leftImg: 1, bottomImg: 0, rightImg: 100,
                                        contentVerticalAligment: 3, widthAnchor: 130, heigthAnchor: 30)
        
        customButton.optionCustomButtonFirst(sender: projectManager, titleLabel: "Менеджер проекта", titleColor: UIColor.black, titleContentMode: 0,
                                        topTitle: 2, leftTitle: 35, bottomTitle: 0, rightTitle: 150,
                                        nameImg: "squareWhite", imgContentMode: 1,
                                        topImg: 0, leftImg: 1, bottomImg: 0, rightImg: 160,
                                        contentVerticalAligment: 3, widthAnchor: 190, heigthAnchor: 30)
    }
    
    private func allButtonWhite() {
        innovator.setImage(white, for: .normal)
        specialist.setImage(white, for: .normal)
        mentor.setImage(white, for: .normal)
        projectManager.setImage(white, for: .normal)
    }
    
    //MARK: Objc methods
    @objc func tappedIsWhoIt() {
        let alertController = UIAlertController(title: "Кто вы?",
                                                message: "Новатор – носитель идеи.\nМентор – наставник.\nСпециалист - исполнитель идеи.\nДизайнер проекта - создатель дизайна и архитектуры идеи.",
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func tappedIsBtn(_ sender: UIButton) {
        let vc = RegistrationWinVC()
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsAcceptanceOfPrivacyPolicyButton() {
        acceptanceOfPrivacyPolicyBool = !acceptanceOfPrivacyPolicyBool
        if acceptanceOfPrivacyPolicyBool == true {
            acceptanceOfPrivacyPolicy.setImage(blue, for: .normal)
        } else {
            acceptanceOfPrivacyPolicy.setImage(white, for: .normal)
        }
    }
    
    @objc func selectAnOptionFromTheListed(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Новатор":
            allButtonWhite()
            innovator.setImage(blue, for: .normal)
        case "Специалист":
            allButtonWhite()
            specialist.setImage(blue, for: .normal)
        case "Ментор":
            allButtonWhite()
            mentor.setImage(blue, for: .normal)
        case "Менеджер проекта":
            allButtonWhite()
            projectManager.setImage(blue, for: .normal)
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //registrationView
        self.registrationView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 55).isActive = true
        self.registrationView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        self.registrationView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        self.registrationView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -130).isActive = true
        
        //registrationLabel
        self.registrationLabel.centerXAnchor.constraint(equalTo: self.registrationView.centerXAnchor).isActive = true
        self.registrationLabel.topAnchor.constraint(equalTo: self.registrationView.topAnchor, constant: 10).isActive = true
        self.registrationLabel.widthAnchor.constraint(equalToConstant: 175).isActive = true
        self.registrationLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //registrationButton
        self.registrationButton.centerXAnchor.constraint(equalTo: self.registrationView.centerXAnchor).isActive = true
        self.registrationButton.bottomAnchor.constraint(equalTo: self.registrationView.bottomAnchor, constant: -15).isActive = true
        self.registrationButton.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.registrationButton.trailingAnchor.constraint(equalTo: self.eMailTextField.trailingAnchor).isActive = true
        self.registrationButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //familyTextField
        self.familyTextField.topAnchor.constraint(equalTo: self.registrationView.topAnchor, constant: 60).isActive = true
        self.familyTextField.leadingAnchor.constraint(equalTo: self.registrationView.leadingAnchor, constant: 25).isActive = true
        self.familyTextField.trailingAnchor.constraint(equalTo: self.registrationView.trailingAnchor, constant: -25).isActive = true
        
        //firstNameTextField
        self.firstNameTextField.topAnchor.constraint(equalTo: self.familyTextField.bottomAnchor, constant: 20).isActive = true
        self.firstNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.firstNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //secondNameTextField
        self.secondNameTextField.topAnchor.constraint(equalTo: self.firstNameTextField.bottomAnchor, constant: 20).isActive = true
        self.secondNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.secondNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //sityTextField
        self.sityTextField.topAnchor.constraint(equalTo: self.secondNameTextField.bottomAnchor, constant: 20).isActive = true
        self.sityTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.sityTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //mobileTextField
        self.mobileTextField.topAnchor.constraint(equalTo: self.sityTextField.bottomAnchor, constant: 20).isActive = true
        self.mobileTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.mobileTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //eMailTextField
        self.eMailTextField.topAnchor.constraint(equalTo: self.mobileTextField.bottomAnchor, constant: 20).isActive = true
        self.eMailTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.eMailTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //whoIt
        self.whoIt.topAnchor.constraint(equalTo: self.eMailTextField.bottomAnchor, constant: 30).isActive = true
        self.whoIt.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
       
        //innovator
        self.innovator.topAnchor.constraint(equalTo: self.whoIt.bottomAnchor, constant: 20).isActive = true
        self.innovator.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        
        //specialist
        self.specialist.topAnchor.constraint(equalTo: self.innovator.topAnchor).isActive = true
        self.specialist.leadingAnchor.constraint(equalTo: self.innovator.trailingAnchor, constant: 20).isActive = true
        
        //mentor
        self.mentor.topAnchor.constraint(equalTo: self.innovator.bottomAnchor, constant: 20).isActive = true
        self.mentor.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        
        //projectManager
        self.projectManager.topAnchor.constraint(equalTo: self.mentor.topAnchor).isActive = true
        self.projectManager.leadingAnchor.constraint(equalTo: self.mentor.trailingAnchor, constant: 20).isActive = true
        
        //AacceptanceOfPrivacyPolicy
        self.acceptanceOfPrivacyPolicy.bottomAnchor.constraint(equalTo: self.registrationButton.topAnchor, constant: -40).isActive = true
        self.acceptanceOfPrivacyPolicy.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
    }
}
