//
//  ImageLoader.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 11/6/23.
//

import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    private let urlString: String
    
    init(url: String) {
        self.urlString = url
        Task { await loadImage() }
    }
    
    @MainActor
    private func loadImage() async {
        guard let url = URL(string: urlString) else { return }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let uiImage = UIImage(data: data) else { return }
            self.image = Image(uiImage: uiImage)
        } catch {
            print("DEBUG: failed to fetch image with error \(error)")
        }
    }
}
