//
//  String+Extension.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

extension String {
    static func roundUpTwoDecimals(with string: Self?) -> String {
        return String(format: "%.2f", Double.stringToDouble(from: string))
    }
}
