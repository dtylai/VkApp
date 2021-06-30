//
//  File.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation

protocol FeedCellLayoutCalculatorProtocol {
    func sizes(postText: String?, photoAttachment: FeedCellPhotoAttachementViewModel?) -> FeedCellSizes
}
