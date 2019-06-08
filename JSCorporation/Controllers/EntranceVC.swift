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
    
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "EntranceVC"
        lbl.backgroundColor = UIColor.smokeCustom
        return lbl
    }()
    
    private let testButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.red, for: .normal)
        btn.setTitleColor(UIColor.orange, for: .highlighted)
        btn.backgroundColor = UIColor.smokeCustom
        btn.addTarget(self, action: #selector(tappedIsBtn(_:)), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(testButton)
        self.view.addSubview(titleLabel)
        anchorConstraint()
    }
    
    //MARK: Objc methods
    @objc func tappedIsBtn(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Next":
            print("tapped btn")
            let vc = MenuVC()
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
    
    //MARK: Constrains
    private func anchorConstraint() {
        
        //title Label
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.titleLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //test button
        self.testButton.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20).isActive = true
        self.testButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.testButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.testButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
