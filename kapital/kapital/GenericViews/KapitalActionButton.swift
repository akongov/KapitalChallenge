//
//  KapitalActionButton.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct KapitalActionButton: View {
    struct Constants {
        static let padding = 10.0
        static let fontTitle: Font = .system(size: 14.0)
    }
    
    var body: some View {
        HStack {
            Text("+ Add token").font(Constants.fontTitle).fontWeight(.bold).padding(Constants.padding)
        }
        .background(Color(uiColor: .white.withAlphaComponent(0.3)))
        .clipShape(.capsule)
    }
}
