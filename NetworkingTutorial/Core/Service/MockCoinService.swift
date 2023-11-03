//
//  MockCoinService.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 11/3/23.
//

import Foundation

class MockCoinService: CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin] {
        return []
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        return nil
    }
    
    
}
