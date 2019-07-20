//
//  MenuModel.swift
//  JSCorporation
//
//  Created by Борис Павлов on 06/06/2019.
//  Copyright © 2019 Boris. All rights reserved.
//

import Foundation
import UIKit

enum MenuModel: Int, CustomStringConvertible {
    
    case MyProfile
    case MyProjects
    case MyDocuments
    case SourceCode
    case ObjectDesign
    case Specialists
    case Innovators
    case Project
    case Curators
    case Mentors
    case Probation
    case Applications
    case Support
    case Contacts
    case WebSite
    case Settings
    case Exit
    
    
    var description: String {
        switch self {
        case .MyProfile: return "Мой профиль"
        case .MyProjects: return "Мои проекты"
        case .MyDocuments: return "Мои документы"
        case .SourceCode: return "Исходный код"
        case .ObjectDesign: return "ОБъекты дизайна"
        case .Specialists: return "Специалисты"
        case .Innovators: return "Новаторы"
        case .Project: return "Проекты"
        case .Curators: return "Кураторы"
        case .Mentors: return "Менторы"
        case .Probation: return "Стажировки"
        case .Applications: return "Заявки"
        case .Support: return "Поддержка"
        case .Contacts: return "Контакты"
        case .WebSite: return "Web-site"
        case .Settings: return "Настройки"
        case .Exit: return "Выход"
            
        }
    }
    
    var image: UIImage {
        switch self {
        case .MyProfile: return UIImage(named: "11MyProfile") ?? UIImage()
        case .MyProjects: return UIImage(named: "1Project") ?? UIImage()
        case .MyDocuments: return UIImage(named: "2MyDocument") ?? UIImage()
        case .SourceCode: return UIImage(named: "") ?? UIImage()
        case .ObjectDesign: return UIImage(named: "") ?? UIImage()
        case .Specialists: return UIImage(named: "3Specialists") ?? UIImage()
        case .Innovators: return UIImage(named: "4Innovators") ?? UIImage()
        case .Project: return UIImage(named: "1Project") ?? UIImage()
        case .Curators: return UIImage(named: "6Curators") ?? UIImage()
        case .Mentors: return UIImage(named: "7Mentors") ?? UIImage()
        case .Probation: return UIImage(named: "8Internship") ?? UIImage()
        case .Applications: return UIImage(named: "9Applications") ?? UIImage()
        case .Support: return UIImage(named: "13Support") ?? UIImage()
        case .Contacts: return UIImage(named: "") ?? UIImage()
        case .WebSite: return UIImage(named: "") ?? UIImage()
        case .Settings: return UIImage(named: "10Settings") ?? UIImage()
        case .Exit: return UIImage(named: "") ?? UIImage()
        }
    }
    
}
