//
//  KapitalError.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

enum KapitalError {
    case genericError
    case badURLString
    case storedLocalDataError
    case storedLocalDataReturnObjectError
    case storedLocalDataParsingError
    
    var message: String {
        switch self {
        case .genericError: "Sorry, we cannot connect to the server. /nPlease, try it later."
        case .badURLString: "Invalid URL"
        case .storedLocalDataError: "Remote data cannot be stored"
        case .storedLocalDataReturnObjectError: "Something wwent wrong when trying to get local stored data"
        case .storedLocalDataParsingError: "Something wwent wrong when trying to parse stored data"
        }
    }
}
