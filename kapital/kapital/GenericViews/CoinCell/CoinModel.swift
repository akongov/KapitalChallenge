//
//  CoinModel.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

struct CoinModel: Identifiable, Codable {
    var id: String
    var rank: String?
    var symbol: String?
    var name: String?
    var supply: String?
    var maxSupply: String?
    var marketCapUsd: String?
    var volumeUsd24Hr: String?
    var priceUsd: String?
    var changePercent24Hr: String?
    var vwap24Hr: String?
    var explorer: String?
}
