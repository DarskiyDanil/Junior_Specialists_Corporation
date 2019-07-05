//
//  CostumFont.swift
//  JSCorporation
//
//  Created by Борис Павлов on 03/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import Foundation
import UIKit

//MARK: Размеры и типы шрифта
extension UIFont {
    
    //MARK: Общий перечень шрифтов, которые используются в интерфейсе
    //Font
    static let custF22NPingFang = UIFont(name: "PingFang TC", size: 22)
    static let custF19NPingFang = UIFont(name: "PingFang TC", size: 19)
    static let custF17NPingFang = UIFont(name: "PingFang TC", size: 17)
    static let custF15NPingFang = UIFont(name: "PingFang TC", size: 15)
    
    //Bold
    static let custF22Bold = UIFont.boldSystemFont(ofSize: 22)
    static let custF28Bold = UIFont.boldSystemFont(ofSize: 28)
    static let custF19Bold = UIFont.boldSystemFont(ofSize: 19)
    static let custF18Bold = UIFont.boldSystemFont(ofSize: 18)
    
    
    //MARK: Привязка шрифтов к местам где они использованы
    //Font
    //22
    static let labelF22 = custF22NPingFang
    static let buttonF22 = custF22NPingFang
    static let textFieldF22 = custF22NPingFang
    
    //19
    static let labelF19 = custF19NPingFang
    static let buttonF19 = custF19NPingFang
    static let textFieldF19 = custF19NPingFang
    
    //17
    static let labelF17 = custF17NPingFang
    static let buttonF17 = custF17NPingFang
    static let textFieldF17 = custF17NPingFang
    
    //15
    static let labelF15 = custF15NPingFang
    static let buttonF15 = custF15NPingFang
    static let textFieldF15 = custF15NPingFang
    
    

    //Bold
    //28
    static let labelF28B = custF28Bold
    static let buttonF28B = custF28Bold
    static let textFieldF28B = custF28Bold
    
    
    //22
    static let labelF22B = custF22Bold
    static let buttonF22B = custF22Bold
    static let textFieldF22B = custF22Bold
    
    //19
    static let labelF19B = custF19Bold
    static let buttonF19B = custF19Bold
    static let textFieldF19B = custF19Bold
    
    //18
    static let labelF18B = custF18Bold
    static let buttonF18B = custF18Bold
    static let textFieldF18B = custF18Bold
    
}
