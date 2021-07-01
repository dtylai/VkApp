//
//  NewsFeedInteractor.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol NewsFeedBusinessLogic {
    func makeRequest(request: NewsFeed.Model.Request.RequestType)
}

class NewsFeedInteractor: NewsFeedBusinessLogic {
    
    
    var presenter: NewsFeedPresentationLogic?
    var service: NewsFeedService?
    
    private var feedResponse: FeedResponse?
    
    private var fetcher:DataFetcher = NetworkDataFetcher(networking: NetworkService())
    func makeRequest(request: NewsFeed.Model.Request.RequestType) {
        if service == nil {
            service = NewsFeedService()
        } 
        switch request {
        
        case .getNewsfeed:
            fetcher.getFeed { [weak self] (feedResponse) in
                self?.feedResponse = feedResponse
                self?.presentFeed()
            }
            
            
        }
        
    }
    private func presentFeed() {
        guard let feedResponse = feedResponse else { return }
        presenter?.presentData(response: NewsFeed.Model.Response.ResponseType.presentNewsfeed(feed: feedResponse))
    }
    
}
