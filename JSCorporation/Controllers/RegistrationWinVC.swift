//
//  RegistrationWinVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

//MARK: Регистрация завершена
class RegistrationWinVC: UIViewController, UIGestureRecognizerDelegate {

    //Properties
    private let logoPostman: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "PostmanLogo")
        img.image = image
        return img
    }()
    
    private let registrationWinView: UIView = {
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
   
    private let welcomJSCorpLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Добро пожаловать в JS Corp!"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.btnSize
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        return lbl
    }()
    
    private let welcomTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Вы успешно зарегестрировались, мы отправили вам email, пожалуйста, перейдите в почту и верифицируйтесь!"
        lbl.numberOfLines = 4
        lbl.textAlignment = NSTextAlignment.center
        lbl.lineBreakMode = NSLineBreakMode.byWordWrapping
        lbl.textColor = UIColor.smokeCustom
        lbl.font = UIFont(name: "PingFang TC", size: 17)
        return lbl
    }()
    
    private let registrationWinButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        btn.setTitle("Войти в личный кабинет", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let goBackToTheMainPage: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.btnSize
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        btn.setTitle("Вернуться на главную", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.grayCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(logoPostman)
        self.view.addSubview(registrationWinView)
        self.view.addSubview(logoJSGrey)
       
        //registrationWinView
        self.registrationWinView.addSubview(welcomJSCorpLabel)
        self.registrationWinView.addSubview(welcomTextLabel)
        self.registrationWinView.addSubview(registrationWinButton)
        self.registrationWinView.addSubview(goBackToTheMainPage)
        
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
        case "Войти в личный кабинет":
            let vc = MyProfileVC()
            self.present(vc, animated: true, completion: nil)
        case "Вернуться на главную":
            let vc = EntranceVC()
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Logo Postman
        self.logoPostman.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoPostman.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        self.logoPostman.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.logoPostman.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Registration Win View
        self.registrationWinView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.registrationWinView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.registrationWinView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.registrationWinView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //Logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Welcom JSCorp Label
        self.welcomJSCorpLabel.centerXAnchor.constraint(equalTo: self.registrationWinView.centerXAnchor).isActive = true
        self.welcomJSCorpLabel.topAnchor.constraint(equalTo: self.registrationWinView.topAnchor, constant: 10).isActive = true
        self.welcomJSCorpLabel.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.welcomJSCorpLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Welcom Text Label
        self.welcomTextLabel.topAnchor.constraint(equalTo: self.welcomJSCorpLabel.bottomAnchor, constant: 10).isActive = true
        self.welcomTextLabel.bottomAnchor.constraint(equalTo: self.registrationWinButton.topAnchor, constant: -20).isActive = true
        self.welcomTextLabel.leadingAnchor.constraint(equalTo: self.goBackToTheMainPage.leadingAnchor).isActive = true
        self.welcomTextLabel.trailingAnchor.constraint(equalTo: self.goBackToTheMainPage.trailingAnchor).isActive = true
        
        //Registration Win Button
        self.registrationWinButton.bottomAnchor.constraint(equalTo: self.goBackToTheMainPage.topAnchor, constant: -10).isActive = true
        self.registrationWinButton.centerXAnchor.constraint(equalTo: self.goBackToTheMainPage.centerXAnchor).isActive = true
        self.registrationWinButton.trailingAnchor.constraint(equalTo: self.goBackToTheMainPage.trailingAnchor).isActive = true
        self.registrationWinButton.leadingAnchor.constraint(equalTo: self.goBackToTheMainPage.leadingAnchor).isActive = true
        self.registrationWinButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //Go Back To The Main Page Button
        self.goBackToTheMainPage.bottomAnchor.constraint(equalTo: self.registrationWinView.bottomAnchor, constant: -25).isActive = true
        self.goBackToTheMainPage.centerXAnchor.constraint(equalTo: self.registrationWinView.centerXAnchor).isActive = true
        self.goBackToTheMainPage.trailingAnchor.constraint(equalTo: self.registrationWinView.trailingAnchor, constant: -30).isActive = true
        self.goBackToTheMainPage.leadingAnchor.constraint(equalTo: self.registrationWinView.leadingAnchor, constant: 30).isActive = true
        self.goBackToTheMainPage.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
