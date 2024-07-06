//
//  HeaderViewModel.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

class HeaderViewModel: ObservableObject {
    func userName() -> String {
        return "Agustin Konishi"
    }
    
    func environmentName() -> String {
        return "Ropsten tesnet"
    }
}
