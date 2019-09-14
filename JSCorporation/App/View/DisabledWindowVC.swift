//
//  DisabledWindowVC.swift
//  JSCorporation
//
//  Created by Борис Павлов on 09/08/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class DisabledWindowVC: UIViewController, UIGestureRecognizerDelegate {
    
    //MARK: Properties
    private let dogBathSorry: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "DogBathSorry")
        img.image = image
        return img
    }()
    
    private let logoJSGrey: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "JScorplogos1grey")
        img.image = image
        return img
    }()
    
    private let viewDisabled: UIView = {
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
   
    private let labelDisabled: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Приносим свои извинения!"
        lbl.textColor = UIColor.cyanCustom
        lbl.font = UIFont.customFont19
        lbl.font = UIFont.customBold19
        return lbl
    }()
    
    private let labelDisabledText: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Данный раздел находится на стадии разработки"
        lbl.numberOfLines = 2
        lbl.textAlignment = .center
        lbl.textColor = UIColor.lightBlackCustom
        return lbl
    }()
    
    private let exitByButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.customFont19
        btn.titleLabel?.font = UIFont.customBold19
        btn.setTitle("Вернуться в профиль", for: .normal)
        btn.setTitleColor(UIColor.snowCustom, for: .normal)
        btn.backgroundColor = UIColor.cyanCustom
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(tappedIsButtonByExit(_:)), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //view
        self.view.addSubview(dogBathSorry)
        self.view.addSubview(logoJSGrey)
        self.view.addSubview(viewDisabled)
        self.viewDisabled.addSubview(labelDisabled)
        self.viewDisabled.addSubview(labelDisabledText)
        self.viewDisabled.addSubview(exitByButton)
        
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
    @objc func tappedIsButtonByExit(_ sender: AnyObject) {
        let vc = MyProfileVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func tappedIsImg(_ sender: AnyObject) {
        let vc = EntranceVC()
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //dogBathSorry
        self.dogBathSorry.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dogBathSorry.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 170).isActive = true
        self.dogBathSorry.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.dogBathSorry.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        //logoJSGrey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //viewDisabled
        self.viewDisabled.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.viewDisabled.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.viewDisabled.widthAnchor.constraint(equalToConstant: 360).isActive = true
        self.viewDisabled.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //labelDisabled
        self.labelDisabled.centerXAnchor.constraint(equalTo: self.viewDisabled.centerXAnchor).isActive = true
        self.labelDisabled.topAnchor.constraint(equalTo: self.viewDisabled.topAnchor, constant: 30).isActive = true
        self.labelDisabled.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.labelDisabled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //labelDisabledText
        self.labelDisabledText.topAnchor.constraint(equalTo: self.labelDisabled.bottomAnchor, constant: 10).isActive = true
        self.labelDisabledText.leadingAnchor.constraint(equalTo: self.viewDisabled.leadingAnchor, constant: 50).isActive = true
        self.labelDisabledText.trailingAnchor.constraint(equalTo: self.viewDisabled.trailingAnchor, constant: -50).isActive = true
        
        //exitByButton
        self.exitByButton.centerXAnchor.constraint(equalTo: self.viewDisabled.centerXAnchor).isActive = true
        self.exitByButton.bottomAnchor.constraint(equalTo: self.viewDisabled.bottomAnchor, constant: -15).isActive = true
        self.exitByButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        self.exitByButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
