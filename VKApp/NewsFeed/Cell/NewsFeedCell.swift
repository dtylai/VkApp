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
    
}
class NewsFeedCell: UITableViewCell {
    
    static let reuseId = "NewsFeedCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var postLable: UILabel!
    @IBOutlet weak var likesLable: UILabel!
    @IBOutlet weak var commentsLable: UILabel!
    @IBOutlet weak var sharesLable: UILabel!
    @IBOutlet weak var viewsLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    func set(viewModel:FeedCellViewModel){
        nameLable.text = viewModel.name
        dateLable.text = viewModel.date
        postLable.text = viewModel.text
        likesLable.text = viewModel.likes
        commentsLable.text = viewModel.comments
        sharesLable.text = viewModel.shares
        viewsLable.text = viewModel.views
        
    }
    
}
