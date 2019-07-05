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
        lbl.font = UIFont.labelF22
        lbl.font = UIFont.labelF28B
        return lbl
    }()
    
    private let registrationButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.buttonF19
        btn.titleLabel?.font = UIFont.buttonF19B
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
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let firstNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Имя"
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let secondNameTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Отчество"
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let sityTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Город"
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let mobileTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Тел:"
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let eMailTextField: UITextField = {
        let txf = UITextField()
        txf.translatesAutoresizingMaskIntoConstraints = false
        txf.placeholder = "Email"
        txf.font = UIFont.textFieldF19
        txf.layer.cornerRadius = 5
        txf.borderStyle = UITextField.BorderStyle.roundedRect
        return txf
    }()
    
    private let whoItLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Кто вы?"
        lbl.font = UIFont.labelF17
        lbl.font = UIFont.labelF19B
        return lbl
    }()
    
    private let whoItImageView: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "23Iinformation")
        
        img.image = image
        return img
    }()
    
    private let innovatorButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsInnovatorBtn), for: .touchUpInside)
        return btn
    }()
    
    private let innovatorLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Новатор"
        lbl.font = UIFont.labelF17
        return lbl
    }()
    
    private let specialistButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsSpecialistBtn), for: .touchUpInside)
        return btn
    }()
    
    private let specialistLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Специалист"
        lbl.font = UIFont.labelF17
        return lbl
    }()
    
    private let mentorButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsMentorBtn), for: .touchUpInside)
        return btn
    }()
    
    private let mentorLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Ментор"
        lbl.font = UIFont.labelF17
        return lbl
    }()
    
    private let projectManagerButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsProjectManagerBtn), for: .touchUpInside)
        return btn
    }()
    
    private let projectManagerLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Менеджер проекта"
        lbl.font = UIFont.labelF17
        return lbl
    }()
    
    private let acceptanceOfPrivacyPolicyButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.smokeCustom.cgColor
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsAcceptanceOfPrivacyPolicyButton), for: .touchUpInside)
        return btn
    }()
    
    private let acceptanceOfPrivacyPolicyLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Принимаю условия политики конфиденциальности"
        lbl.font = UIFont.labelF17
        lbl.numberOfLines = 2
        return lbl
    }()
    
    var innovatorBool: Bool!
    var specialistBool: Bool!
    var mentorBool: Bool!
    var projectManagerBool: Bool!
    var acceptanceOfPrivacyPolicyBool: Bool!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(registrationView)
        self.view.addSubview(logoJSGrey)
        
        //registration view
        createdByView()
        
        innovatorBool = false
        specialistBool = false
        mentorBool = false
        projectManagerBool = false
        acceptanceOfPrivacyPolicyBool = false
        
        //other methods
        anchorConstraint()
        tappedIsImage()
    }
    
    //MARK: Methods
    private func tappedIsImage() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedIsImg(_:)))
        self.logoJSGrey.addGestureRecognizer(tap)
        self.logoJSGrey.isUserInteractionEnabled = true
        
        let tapWhoIt = UITapGestureRecognizer(target: self, action: #selector(tappedIsWhoItImg))
        self.whoItImageView.addGestureRecognizer(tapWhoIt)
        self.whoItImageView.isUserInteractionEnabled = true
    }
    
    //MARK: Objc methods
    @objc func tappedIsImg(_ sender: AnyObject) {
        let vc = EntranceVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsWhoItImg() {
        let alertController = UIAlertController(title: "Кто вы?", message: "Новатор – носитель идеи.\nМентор – наставник.\nСпециалист - исполнитель идеи.\nДизайнер проекта - создатель дизайна и архитектуры идеи.", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func tappedIsBtn(_ sender: UIButton) {
        let vc = RegistrationWinVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsInnovatorBtn() {
        innovatorBool = !innovatorBool
        if innovatorBool == true {
            innovatorButton.backgroundColor = UIColor.cyanCustom
            specialistButton.backgroundColor = UIColor.snowCustom
            mentorButton.backgroundColor = UIColor.snowCustom
            projectManagerButton.backgroundColor = UIColor.snowCustom
        } else {
            innovatorButton.backgroundColor = UIColor.snowCustom
        }
    }
    
    @objc func tappedIsSpecialistBtn() {
        specialistBool = !specialistBool
        if specialistBool == true {
            specialistButton.backgroundColor = UIColor.cyanCustom
            innovatorButton.backgroundColor = UIColor.snowCustom
            mentorButton.backgroundColor = UIColor.snowCustom
            projectManagerButton.backgroundColor = UIColor.snowCustom
        } else {
            specialistButton.backgroundColor = UIColor.snowCustom
        }
    }
    
    @objc func tappedIsMentorBtn() {
        mentorBool = !mentorBool
        if mentorBool == true {
            mentorButton.backgroundColor = UIColor.cyanCustom
            specialistButton.backgroundColor = UIColor.snowCustom
            innovatorButton.backgroundColor = UIColor.snowCustom
            projectManagerButton.backgroundColor = UIColor.snowCustom
        } else {
            mentorButton.backgroundColor = UIColor.snowCustom
        }
    }
    
    @objc func tappedIsProjectManagerBtn() {
        projectManagerBool = !projectManagerBool
        if projectManagerBool == true {
            projectManagerButton.backgroundColor = UIColor.cyanCustom
            specialistButton.backgroundColor = UIColor.snowCustom
            innovatorButton.backgroundColor = UIColor.snowCustom
            mentorButton.backgroundColor = UIColor.snowCustom
        } else {
            projectManagerButton.backgroundColor = UIColor.snowCustom
        }
    }
    
    @objc func tappedIsAcceptanceOfPrivacyPolicyButton() {
        acceptanceOfPrivacyPolicyBool = !acceptanceOfPrivacyPolicyBool
        if acceptanceOfPrivacyPolicyBool == true {
            acceptanceOfPrivacyPolicyButton.backgroundColor = UIColor.cyanCustom
        } else {
            acceptanceOfPrivacyPolicyButton.backgroundColor = UIColor.snowCustom
        }
    }
    
    func createdByView() {
        self.registrationView.addSubview(registrationLabel)
        self.registrationView.addSubview(registrationButton)
        self.registrationView.addSubview(familyTextField)
        self.registrationView.addSubview(firstNameTextField)
        self.registrationView.addSubview(secondNameTextField)
        self.registrationView.addSubview(sityTextField)
        self.registrationView.addSubview(mobileTextField)
        self.registrationView.addSubview(eMailTextField)
        self.registrationView.addSubview(whoItLabel)
        self.registrationView.addSubview(whoItImageView)
        self.registrationView.addSubview(innovatorLabel)
        self.registrationView.addSubview(innovatorButton)
        self.registrationView.addSubview(specialistLabel)
        self.registrationView.addSubview(specialistButton)
        self.registrationView.addSubview(mentorLabel)
        self.registrationView.addSubview(mentorButton)
        self.registrationView.addSubview(projectManagerLabel)
        self.registrationView.addSubview(projectManagerButton)
        self.registrationView.addSubview(acceptanceOfPrivacyPolicyLabel)
        self.registrationView.addSubview(acceptanceOfPrivacyPolicyButton)
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
        self.registrationButton.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.registrationButton.trailingAnchor.constraint(equalTo: self.eMailTextField.trailingAnchor).isActive = true
        self.registrationButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Family Text field
        self.familyTextField.topAnchor.constraint(equalTo: self.registrationView.topAnchor, constant: 60).isActive = true
        self.familyTextField.leadingAnchor.constraint(equalTo: self.registrationView.leadingAnchor, constant: 25).isActive = true
        self.familyTextField.trailingAnchor.constraint(equalTo: self.registrationView.trailingAnchor, constant: -25).isActive = true
        
        //First Name Text Field
        self.firstNameTextField.topAnchor.constraint(equalTo: self.familyTextField.bottomAnchor, constant: 20).isActive = true
        self.firstNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.firstNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Second Name Text Field
        self.secondNameTextField.topAnchor.constraint(equalTo: self.firstNameTextField.bottomAnchor, constant: 20).isActive = true
        self.secondNameTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.secondNameTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Sity Text Field
        self.sityTextField.topAnchor.constraint(equalTo: self.secondNameTextField.bottomAnchor, constant: 20).isActive = true
        self.sityTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.sityTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Mobile Text Field
        self.mobileTextField.topAnchor.constraint(equalTo: self.sityTextField.bottomAnchor, constant: 20).isActive = true
        self.mobileTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.mobileTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Email Text Field
        self.eMailTextField.topAnchor.constraint(equalTo: self.mobileTextField.bottomAnchor, constant: 20).isActive = true
        self.eMailTextField.leadingAnchor.constraint(equalTo: self.familyTextField.leadingAnchor).isActive = true
        self.eMailTextField.trailingAnchor.constraint(equalTo: self.familyTextField.trailingAnchor).isActive = true
        
        //Who It Label
        self.whoItLabel.topAnchor.constraint(equalTo: self.eMailTextField.bottomAnchor, constant: 30).isActive = true
        self.whoItLabel.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.whoItLabel.widthAnchor.constraint(equalToConstant: 75).isActive = true
        self.whoItLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Who It Image View
        self.whoItImageView.topAnchor.constraint(equalTo: self.whoItLabel.topAnchor, constant: 2).isActive = true
        self.whoItImageView.leadingAnchor.constraint(equalTo: self.whoItLabel.trailingAnchor, constant: 1).isActive = true
        self.whoItImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        self.whoItImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        //Innovator Label
        self.innovatorLabel.topAnchor.constraint(equalTo: self.innovatorButton.topAnchor).isActive = true
        self.innovatorLabel.leadingAnchor.constraint(equalTo: self.innovatorButton.trailingAnchor, constant: 10).isActive = true
        self.innovatorLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        self.innovatorLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Inoovator Button
        self.innovatorButton.topAnchor.constraint(equalTo: self.whoItLabel.bottomAnchor, constant: 20).isActive = true
        self.innovatorButton.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.innovatorButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.innovatorButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Specialist Label
        self.specialistLabel.topAnchor.constraint(equalTo: self.specialistButton.topAnchor).isActive = true
        self.specialistLabel.leadingAnchor.constraint(equalTo: self.specialistButton.trailingAnchor, constant: 10).isActive = true
        self.specialistLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.specialistLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Specialist Button
        self.specialistButton.topAnchor.constraint(equalTo: self.innovatorButton.topAnchor).isActive = true
        self.specialistButton.leadingAnchor.constraint(equalTo: self.innovatorButton.trailingAnchor, constant: 100).isActive = true
        self.specialistButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.specialistButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Mentor Label
        self.mentorLabel.topAnchor.constraint(equalTo: self.mentorButton.topAnchor).isActive = true
        self.mentorLabel.leadingAnchor.constraint(equalTo: self.mentorButton.trailingAnchor, constant: 10).isActive = true
        self.mentorLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        self.mentorLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Mentor Button
        self.mentorButton.topAnchor.constraint(equalTo: self.innovatorButton.bottomAnchor, constant: 20).isActive = true
        self.mentorButton.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.mentorButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.mentorButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Project Manaer Labe
        self.projectManagerLabel.topAnchor.constraint(equalTo: self.projectManagerButton.topAnchor).isActive = true
        self.projectManagerLabel.leadingAnchor.constraint(equalTo: self.projectManagerButton.trailingAnchor, constant: 10).isActive = true
        self.projectManagerLabel.widthAnchor.constraint(equalToConstant: 160).isActive = true
        self.projectManagerLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Project Manager Button
        self.projectManagerButton.topAnchor.constraint(equalTo: self.mentorButton.topAnchor).isActive = true
        self.projectManagerButton.leadingAnchor.constraint(equalTo: self.mentorButton.trailingAnchor, constant: 100).isActive = true
        self.projectManagerButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.projectManagerButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Acceptance Of Privacy Policy Label
        self.acceptanceOfPrivacyPolicyLabel.topAnchor.constraint(equalTo: self.acceptanceOfPrivacyPolicyButton.topAnchor).isActive = true
        self.acceptanceOfPrivacyPolicyLabel.leadingAnchor.constraint(equalTo: self.acceptanceOfPrivacyPolicyButton.trailingAnchor, constant: 10).isActive = true
        self.acceptanceOfPrivacyPolicyLabel.widthAnchor.constraint(equalToConstant: 240).isActive = true
        self.acceptanceOfPrivacyPolicyLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Acceptance Of Privacy Policy Button
        self.acceptanceOfPrivacyPolicyButton.bottomAnchor.constraint(equalTo: self.registrationButton.topAnchor, constant: -40).isActive = true
        self.acceptanceOfPrivacyPolicyButton.leadingAnchor.constraint(equalTo: self.eMailTextField.leadingAnchor).isActive = true
        self.acceptanceOfPrivacyPolicyButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.acceptanceOfPrivacyPolicyButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
