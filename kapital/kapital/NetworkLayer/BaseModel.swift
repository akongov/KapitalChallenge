//
//  BaseModel.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

struct BaseModel<T: Codable>: Codable {
    var data: T?
}
