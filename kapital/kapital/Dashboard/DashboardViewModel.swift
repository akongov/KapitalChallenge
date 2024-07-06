//
//  DashboardViewModel.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

@MainActor
class DashboardViewModel: ObservableObject {
    @Published var dashboardDataSource = [CoinModel]()
    
    func getDashboardData() async {
        let (object, error) = LocalDataManager().returnObject(for: [CoinModel].self,
                                                              with: .tokens)
        
        guard error == nil,
              let storedDataSource = object as? [CoinModel] else {
            await getRemoteData()
            return
        }
        
        dashboardDataSource = storedDataSource
    }
    
    func getRemoteData() async {
        let (response, error) = await NetworkManager.shared.session(router: .assets,
                                                                    for: [CoinModel].self)
        guard error == nil,
              let safeDataSource = response as? [CoinModel] else { return }
        
        dashboardDataSource = safeDataSource
        LocalDataManager().add(object: safeDataSource, with: .tokens) ? () : print(KapitalError.storedLocalDataError.message)
    }
}
