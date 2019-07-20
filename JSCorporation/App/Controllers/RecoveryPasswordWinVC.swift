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

    //MARK: Properties
    private let logoCat: UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        let image = UIImage(named: "CatLogo")
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
    
    var recoveryPasswordWinWindow: UIViewController!

    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        self.view.addSubview(logoCat)
        self.view.addSubview(logoJSGrey)
        
        //other methods
        anchorConstraint()
        tappedIsImage()
        configCustomRecoveryPasswordWinWindow()
    }
    
    //MARK: Methods
    func configCustomRecoveryPasswordWinWindow() {
        recoveryPasswordWinWindow = RecoveryPasswordWinWindowVC()
        view.insertSubview(recoveryPasswordWinWindow.view, at: 0)
        addChild(recoveryPasswordWinWindow)
    }
    
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
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //Logotype dog
        self.logoCat.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoCat.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        self.logoCat.widthAnchor.constraint(equalToConstant: 260).isActive = true
        self.logoCat.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        //logo JS Grey
        self.logoJSGrey.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.logoJSGrey.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.logoJSGrey.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.logoJSGrey.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
