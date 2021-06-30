//
//  NewsFeedCell.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation
import UIKit

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
    
}

protocol FeedCellPhotoAttachementViewModel {
    var photoUrlString: String? { get }
    var width: Int { get }
    var height: Int { get }
}

class NewsFeedCell: UITableViewCell {
    
    static let reuseId = "NewsFeedCell"
    
    @IBOutlet weak var iconImageView: WebImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var postLable: UILabel!
    @IBOutlet weak var likesLable: UILabel!
    @IBOutlet weak var commentsLable: UILabel!
    @IBOutlet weak var sharesLable: UILabel!
    @IBOutlet weak var viewsLable: UILabel!
    @IBOutlet weak var postImageView: WebImageView!
    
    @IBOutlet weak var postView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImageView.layer.cornerRadius = iconImageView.frame.width / 2
        iconImageView.clipsToBounds = true
        
        postView.layer.cornerRadius = 10
        postView.clipsToBounds = true
        
        
        backgroundColor = .clear
        selectionStyle = .none
    
    }
    
    func set(viewModel:FeedCellViewModel){
        iconImageView.set(imageURL: viewModel.iconUrlString)
        nameLable.text = viewModel.name
        dateLable.text = viewModel.date
        postLable.text = viewModel.text
        likesLable.text = viewModel.likes
        commentsLable.text = viewModel.comments
        sharesLable.text = viewModel.shares
        viewsLable.text = viewModel.views
        if let photoAttachment = viewModel.photoAttachement {
            postImageView.set(imageURL: photoAttachment.photoUrlString)
            postImageView.isHidden = false
        } else {
            postImageView.isHidden = true
        }
        
    }
    
}
