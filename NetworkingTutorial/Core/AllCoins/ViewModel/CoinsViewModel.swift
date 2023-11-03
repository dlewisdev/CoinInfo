//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 10/25/23.
//

import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service: CoinServiceProtocol
    
    init(service: CoinServiceProtocol) {
        self.service = service
        
        Task { await fetchCoins() }
    }
    
    @MainActor
    func fetchCoins() async {
        do {
            self.coins = try await service.fetchCoins()
        } catch {
            if let error = error as? CoinAPIError {
                self.errorMessage = error.customDescription
            } else {
                self.errorMessage = error.localizedDescription
            }
        }
    }
    
//    func fetchCoinsWithCompletionHandler() {
//        service.fetchCoinsWithResult { [weak self] result in
//            DispatchQueue.main.async {
//                switch result {
//                    case .success(let coins):
//                        self?.coins = coins
//                    case .failure(let error):
//                        self?.errorMessage = error.localizedDescription
//                }
//            }
//        }
//    }
}


