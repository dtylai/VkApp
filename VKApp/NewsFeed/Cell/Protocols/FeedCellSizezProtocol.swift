//
//  FeedCellSizezProtocol.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import UIKit

protocol FeedCellSizes {
    var postLabelFrame: CGRect { get }
    var attachmentFrame: CGRect { get }
    var bottomViewFrame: CGRect { get }
    var totalHeight: CGFloat { get }
    var moreTextButtonFrame: CGRect { get }
}
