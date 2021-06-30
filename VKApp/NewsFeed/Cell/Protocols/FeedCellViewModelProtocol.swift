//
//  FeedCellViewModelProtocol.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation

protocol  FeedCellViewModel{
    var name: String{get}
    var date: String{get}
    var text: String?{get}
    var likes: String?{get}
    var comments: String?{get}
    var shares: String?{get}
    var views: String?{get}
    var iconUrlString: String{get}
    var photoAttachement: FeedCellPhotoAttachementViewModel? { get }
    var sizes: FeedCellSizes { get }
    
}
