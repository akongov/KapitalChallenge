//
//  DashboardView.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import SwiftUI

struct DashboardView: View {
    struct Constants {
        static let viewPadding = 20.0
        static let currencyListPadding = 15.0
    }
    
    @StateObject var viewModel = DashboardViewModel()
    
    var body: some View {
        GeometryReader { geoProxy in
            ZStack {
                Color.teal
                    .frame(maxWidth: .infinity,
                           maxHeight: geoProxy.frame(in: .global).height*0.5)
                    .position(x: geoProxy.frame(in: .local).width*0.5,
                              y: geoProxy.frame(in: .global).minY)
                VStack {
                    HeaderView()
                    Divider()
                    BalanceView()
                    if viewModel.dashboardDataSource.isEmpty {
                        LoadingCellView()
                    } else {
                        currencyList
                    }
                }.position(x: geoProxy.frame(in: .local).width*0.5,
                           y: geoProxy.frame(in: .local).midY)
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color(uiColor: .systemGray5))
        }
        .task {
            await viewModel.getDashboardData()
        }
    }
    
    var currencyList: some View {
        VStack {
            HStack {
                Text("Your tokens").fontWeight(.bold)
                Spacer()
                Text("Make changes")
            }
            .foregroundStyle(.white)
            .padding(.horizontal, Constants.viewPadding)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(viewModel.dashboardDataSource, id: \.id) { coinModel in
                        CoinCellView(viewModel: CoinCellViewModel(coinModel: coinModel))
                    }
                }
            }
            .background(.clear)
            .padding(.horizontal, Constants.currencyListPadding)
            .padding(.bottom, Constants.viewPadding)
        }
    }
}

#Preview {
    DashboardView()
}
