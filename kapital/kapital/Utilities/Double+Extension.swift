//
//  Double+Extension.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

extension Double {
    static func stringToDouble(from string: String?) -> Self {
        return Double(string ?? "0.00") ?? 0.00
    }
}
