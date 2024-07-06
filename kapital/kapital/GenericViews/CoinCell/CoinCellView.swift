//
//  CoinCellView.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct CoinCellView: View {
    struct Constants {
        static let imageName = "Coin"
        static let cellHeight = 100.0
        static let imageWidth = 70.0
        static let spacerLength = 10.0
        static let cornerRadius = 10.0
        static let cellPadding = 10.0
    }
    
    let viewModel: CoinCellViewModel
    
    var body: some View {
        HStack {
            Image(Constants.imageName)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: Constants.imageWidth)
            VStack(alignment: .leading) {
                Text(viewModel.name()).fontWeight(.bold)
                Text(viewModel.changePercent24Hrs()).foregroundStyle(Color.gray)
            }.lineLimit(3).minimumScaleFactor(0.8)
            Spacer(minLength: Constants.spacerLength)
            VStack(alignment: .trailing) {
                Text(viewModel.supply()).fontWeight(.bold)
                Text(viewModel.price()).foregroundStyle(Color.gray)
            }.padding(.trailing).lineLimit(1).minimumScaleFactor(0.1)
        }
        .frame(height: Constants.cellHeight)
        .background(.white)
        .clipShape(.rect(cornerRadius: Constants.cornerRadius,
                         style: .circular))
        .padding(.horizontal, Constants.cellPadding)
    }
}

#Preview {
    CoinCellView(viewModel: CoinCellViewModel(coinModel: CoinModel(id: "bitcoin",
                                                                   rank: "1",
                                                                   symbol: "BTC",
                                                                   name: "Bitcoin",
                                                                   supply: "19719521.0000000000000000",
                                                                   maxSupply: "21000000.0000000000000000",
                                                                   marketCapUsd: "1112284023094.6183021168642892",
                                                                   volumeUsd24Hr: "26745534264.1285099359693816",
                                                                   priceUsd: "56405.2252128547291852",
                                                                   changePercent24Hr: "-3.0831640495225050",
                                                                   vwap24Hr: "55737.5850341565053136",
                                                                   explorer: "https://blockchain.info/")))
}
