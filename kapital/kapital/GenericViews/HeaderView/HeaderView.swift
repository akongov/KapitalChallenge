//
//  HeaderView.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct HeaderView: View {
    struct Constants {
        static let viewPadding = 18.0
    }
    
    @StateObject var viewModel = HeaderViewModel()
    
    var body: some View {
        HStack {
            Button(action: {}) {
                HStack {
                    Text(viewModel.environmentName()).foregroundStyle(.yellow).fontWeight(.semibold)
                    Image(systemName: "arrow.down").foregroundStyle(.white)
                }
            }
            Spacer()
            Button(action: {}) {
                HStack {
                    Text(viewModel.userName()).fontWeight(.semibold)
                    Image(systemName: "person.crop.circle")
                    Image(systemName: "arrow.down")
                }.foregroundStyle(.white)
            }
        }.padding(.horizontal, Constants.viewPadding)
    }
}

#Preview {
    HeaderView()
}
