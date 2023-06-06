//
//  RMService.swift
//  Rick&Morty
//
//  Created by Renat on 06.06.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// shared singletone instance
    static let shared = RMService()
    
    private init() {}
    
    /// Send Rick and Morty API Call
    /// Parameters:
    /// - request: Request instance
    /// - completion: Callback with data or error
    
    public func execute(_ request: RMRequest, complition: @escaping () -> Void) {
        
    }
}
