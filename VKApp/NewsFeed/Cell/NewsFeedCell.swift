//
//  NewsFeedCell.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import Foundation
import UIKit

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
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var postView: UIView!
    
    @IBOutlet weak var moreTextButton: UIButton!
    
    override func prepareForReuse() {
        iconImageView.set(imageURL: nil)
        postImageView.set(imageURL: nil)
    }
    
    @IBAction func moreTextButtonClick(_ sender: Any) {
       // Add implementation
        
    }
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
        
        postLable.frame = viewModel.sizes.postLabelFrame
        postImageView.frame = viewModel.sizes.attachmentFrame
        bottomView.frame = viewModel.sizes.bottomViewFrame
        moreTextButton.frame = viewModel.sizes.moreTextButtonFrame
        if let photoAttachment = viewModel.photoAttachement {
            postImageView.set(imageURL: photoAttachment.photoUrlString)
            postImageView.isHidden = false
        } else {
            postImageView.isHidden = true
        }
        
    }
    
}
