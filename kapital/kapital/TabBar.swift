//
//  TabBar.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "square.grid.3x3.middle.filled")
                }
            Text("Transactions")
                .tabItem {
                    Label("Transactions", systemImage: "bitcoinsign.arrow.circlepath")
                }
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .background(.white)
    }
}

#Preview {
    TabBar()
}
