//
//  NetworkManager.swift
//  kapital
//
//  Created by Agustin Konishi on 05/07/24.
//

import Foundation

typealias NetworkResponse = (data: Codable?, error: KapitalError?)

public struct NetworkManager {
    static let shared = NetworkManager()
    
    func session<T: Codable>(router: Router, for object: T.Type) async -> NetworkResponse {
        guard let url = router.url else { return (nil, .badURLString) }
        let urlRequest = URLRequest(url: url)
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let baseObj = try JSONDecoder().decode(BaseModel<T>.self, from: data)
            return (baseObj.data, nil)
        } catch { return (nil, .genericError) }
    }
}
