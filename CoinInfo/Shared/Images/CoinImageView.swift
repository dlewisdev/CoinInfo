//
//  CoinImageView.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 11/6/23.
//

import SwiftUI
//Third party service KingFisher can load images and cache them

struct CoinImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
        }
    }
}

#Preview {
    CoinImageView(url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400")
}
