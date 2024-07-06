//
//  BalanceView.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct BalanceView: View {
    struct Constants {
        static let viewPadding = 20.0
        static let currencyFont: Font = .system(size: 30)
    }
    
    @StateObject var viewModel = BalanceViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Total Balance").fontWeight(.light)
            HStack {
                Text(viewModel.balance()).font(Constants.currencyFont)
                Spacer()
                Button(action: {}) {
                    KapitalActionButton()
                }
            }.padding(.bottom, Constants.viewPadding)
            Divider()
        }
        .foregroundStyle(.white)
        .padding(Constants.viewPadding)
    }
}

#Preview {
    BalanceView()
}
