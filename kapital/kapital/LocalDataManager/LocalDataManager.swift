//
//  LocalDataManager.swift
//  kapital
//
//  Created by Agustin Konishi on 06/07/24.
//

import Foundation

typealias LocalDataResponse = (data: Codable?, error: KapitalError?)

struct LocalDataManager {
    let sharedUserDefaults = UserDefaults()
    
    func add(object: Codable, with type: LocalDataType) -> Bool {
        do {
            let data = try JSONEncoder().encode(object)
            sharedUserDefaults.set(data, forKey: type.key)
            return true
        } catch { return false }
    }
    
    func returnObject<T: Codable>(for object: T.Type, with type: LocalDataType) -> LocalDataResponse {
        guard let dataObj = sharedUserDefaults.object(forKey: type.key) as? Data else { return (nil, .storedLocalDataReturnObjectError) }
        
        do {
            let object = try JSONDecoder().decode(T.self, from: dataObj)
            return (object, nil)
        } catch { return (nil, .storedLocalDataParsingError) }
    }
}
