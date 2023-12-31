//
//  NetworkingTutorialTests.swift
//  NetworkingTutorialTests
//
//  Created by Danielle Lewis on 11/6/23.
//

import XCTest
@testable import NetworkingTutorial

final class CoinInfoTests: XCTestCase {

    func test_DecodeCoinsIntoArray_marketCapDesc() throws {
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockCoinData_marketCapDesc)
            XCTAssertTrue(coins.count > 0) // ensures that coins array has coins
            XCTAssertEqual(coins.count, 20) //ensures that all coins were decoded
            XCTAssertEqual(coins, coins.sorted(by: {$0.marketCapRank < $1.marketCapRank})) // ensures sorting order
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
