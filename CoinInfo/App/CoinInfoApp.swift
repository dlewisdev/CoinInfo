//
//  NetworkingTutorialApp.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 10/25/23.
//

import SwiftUI

@main
struct CoinInfoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(service: CoinDataService())
        }
    }
}
