//
//  PostNameTableViewCell.swift
//  PhotoChat
//
//  Created by Vladyslav Moroz on 25.10.2022.
//

import UIKit

class PostNameTableViewCell: UITableViewCell {
    @IBOutlet weak var photoProfile: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likeButtonOutlet: UIButton!
    @IBOutlet weak var dislikeButtonOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func refresh(_ post: ModelPosts) {
        if let photo = post.photoProfile, let imagePost = post.imagePost {
            photoProfile.image = UIImage(named: photo)
            nameLabel.text = post.name
            postImage.image = UIImage(named: imagePost)
        }
    }
    @IBAction func likeButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func dislikeButtonAction(_ sender: UIButton) {
    }
}
