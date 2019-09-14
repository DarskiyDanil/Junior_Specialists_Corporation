//
//  CustomButton.swift
//  JSCorporation
//
//  Created by Борис Павлов on 08/09/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import UIKit

class CustomButton {
    
    func optionCustomButtonFirst(sender: UIButton,
                            titleLabel title: String, titleColor color: UIColor, titleContentMode contentModeT: Int,
                            topTitle tT: CGFloat, leftTitle lT: CGFloat, bottomTitle bT: CGFloat, rightTitle rT: CGFloat,
                            nameImg name: String, imgContentMode contentModeI: Int,
                            topImg tI: CGFloat, leftImg lI: CGFloat, bottomImg bI: CGFloat, rightImg rI: CGFloat,
                            contentVerticalAligment verticalAligment: Int,
                            widthAnchor width: CGFloat, heigthAnchor heigth: CGFloat) {
        
        let img = UIImage(named: name)
        sender.translatesAutoresizingMaskIntoConstraints = false
        sender.setTitle(title, for: .normal)
        sender.setTitleColor(color, for: .normal)
        sender.titleLabel?.contentMode = UIView.ContentMode(rawValue: contentModeI)!
        sender.titleEdgeInsets = UIEdgeInsets(top: tT, left: lT, bottom: bT, right: rT)
        sender.setImage(img, for: .normal)
        sender.imageEdgeInsets = UIEdgeInsets(top: tI, left: lI, bottom: bI, right: rI)
        sender.imageView?.contentMode = UIView.ContentMode(rawValue: contentModeI)!
        sender.contentVerticalAlignment = UIControl.ContentVerticalAlignment(rawValue: verticalAligment)!
        sender.widthAnchor.constraint(equalToConstant: width).isActive = true
        sender.heightAnchor.constraint(equalToConstant: heigth).isActive = true
    }
    
    func optionCustomButtonSecond(sender: UIButton, viewColor clr: UIColor,
                                  cornerRadius rd: CGFloat, borderWidth bdW: CGFloat, borderColor bdC: UIColor,
                                  titleLabel title: String, titleColor color: UIColor,
                                  widthAnchor width: CGFloat, heigthAnchor heigth: CGFloat) {
        
        sender.translatesAutoresizingMaskIntoConstraints = false
        sender.setTitle(title, for: .normal)
        sender.setTitleColor(color, for: .normal)
        sender.backgroundColor = clr
        sender.layer.cornerRadius = rd
        sender.layer.borderWidth = bdW
        sender.layer.borderColor = bdC.cgColor
        sender.widthAnchor.constraint(equalToConstant: width).isActive = true
        sender.heightAnchor.constraint(equalToConstant: heigth).isActive = true
    }
}
