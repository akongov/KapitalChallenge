//
//  CoinCellViewModel.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

class CoinCellViewModel {
    var coinModel: CoinModel
    
    init(coinModel: CoinModel) {
        self.coinModel = coinModel
    }
    
    func name() -> String {
        return coinModel.name ?? ""
    }
    
    func price() -> String {
        return "$"+String.roundUpTwoDecimals(with: coinModel.priceUsd)
    }
    
    func supply() -> String {
        return String.roundUpTwoDecimals(with: coinModel.supply) + " " + (coinModel.symbol ?? "")
    }
    
    func changePercent24Hrs() -> String {
        return String.roundUpTwoDecimals(with: coinModel.changePercent24Hr)
    }
}
