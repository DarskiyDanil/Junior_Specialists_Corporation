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
    
    var description: String {
        switch self {
        case .MyProfile: return "Мой профиль"
        case .MyProjects: return "Мои проекты"
        case .MyDocuments: return "Мои документы"
            
        }
    }
    
    var image: UIImage {
        switch self {
        case .MyProfile: return UIImage(named: "11MyProfile") ?? UIImage()
        case .MyProjects: return UIImage(named: "1Project") ?? UIImage()
        case .MyDocuments: return UIImage(named: "2MyDocument") ?? UIImage()
        }
    }
    
}
