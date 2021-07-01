//
//  Constants.swift
//  VKApp
//
//  Created by Tulai Dima on 1.07.21.
//

import Foundation
import UIKit

struct Constants {
    static let cardInsets = UIEdgeInsets(top: 0, left: 8, bottom: 12, right: 8)
    static let topViewHeight: CGFloat = 36
    static let postLabelInsets = UIEdgeInsets(top: 8 + Constants.topViewHeight + 8, left: 8, bottom: 8, right: 8)
    static let postLabelFont = UIFont.systemFont(ofSize: 15)
    static let bottomViewHeight: CGFloat = 44
    
    static let minPostLimitLines:CGFloat = 8
    static let minPostLines:CGFloat = 6
    
    static let moreTextButtonInsets = UIEdgeInsets(top: 0
                                                   , left: 0, bottom: 0, right: 0)
    static let moreTextButtonSize = CGSize(width: 170, height: 25)
}
