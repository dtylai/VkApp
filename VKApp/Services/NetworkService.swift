//
//  NetworkService.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation

final class NetworkService {
    
    private let authService: AuthenticationService
    
    init(authService: AuthenticationService = AppDelegate.shared().authService) {
        self.authService = authService
    }
    
    func getFeed() {
        var components = URLComponents()
        
        guard let token = authService.token else { return }
        let params = ["filters": "post,photo"]
        var allParams = params
        allParams["access_token"] = token
        allParams["v"] = API.version
        
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newsFeed
        components.queryItems = allParams.map {  URLQueryItem(name: $0, value: $1) }
        
        let url = components.url!
        print(url)
    }
    
}
