//
//  CoinAPIError.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 10/26/23.
//

import Foundation

enum CoinAPIError: Error {
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    var customDescription: String {
        switch self {
            case .invalidData: return "Invalid Data"
            case .jsonParsingFailure: return "Failed to parse JSON"
            case let .requestFailed(description): return "Request failed \(description)"
            case let .invalidStatusCode(statusCode): return "Invalid status code \(statusCode)"
            case let .unknownError(error): return "An unknown error occured \(error.localizedDescription)"
        }
    }
}
