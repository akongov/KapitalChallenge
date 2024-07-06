//
//  Router.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

enum Router {
    case assets
    
    var url: URL? {
        let baseURL = "https://api.coincap.io/v2"
        
        switch self {
        case .assets: return URL(string: baseURL+"/assets")
        }
    }
}
