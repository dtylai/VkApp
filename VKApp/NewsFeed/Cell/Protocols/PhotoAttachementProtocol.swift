//
//  PhotoAttachementProtocol.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation


protocol FeedCellPhotoAttachementViewModel {
    var photoUrlString: String? { get }
    var width: Int { get }
    var height: Int { get }
}
