//
//  LocalDataType.swift
//  kapital
//
//  Created by Agustin Konishi on 06/07/24.
//

import Foundation

enum LocalDataType {
    case tokens
    
    var key: String {
        switch self {
        case .tokens: return "tokens_key"
        }
    }
}
