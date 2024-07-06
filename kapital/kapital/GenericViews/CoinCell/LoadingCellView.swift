//
//  LoadingCellView.swift
//  kapital
//
//  Created by Agustin Konishi on 06/07/24.
//

import SwiftUI

struct LoadingCellView: View {
    struct Constants {
        static let cellHeight = 100.0
        static let cornerRadius = 10.0
        static let cellPadding = 10.0
    }
    
    var body: some View {
        HStack {
            ProgressView("Loading tokens...").foregroundStyle(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: Constants.cellHeight)
        .background(.white)
        .clipShape(.rect(cornerRadius: Constants.cornerRadius,
                         style: .circular))
        .padding(.horizontal, Constants.cellPadding)
        Spacer()
    }
}

#Preview {
    LoadingCellView()
}
