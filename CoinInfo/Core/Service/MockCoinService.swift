//
//  MockCoinService.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 11/3/23.
//

import Foundation

class MockCoinService: CoinServiceProtocol {
    
    var mockData: Data?
    var mockError: CoinAPIError?
    
    func fetchCoins() async throws -> [Coin] {
        if let mockError { throw mockError }
        
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockData ?? mockCoinData_marketCapDesc)
            return coins
        } catch {
            throw error as? CoinAPIError ?? .unknownError(error: error)
        }
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        let description = Description(text: "Test description")
       let bitcoinDetails = CoinDetails(id: "bitcoin", symbol: "btc", name: "Bitocin", description: description)
        return bitcoinDetails
    }
    
    func doSomething() {
        print("Do stuff")
    }
    
}
