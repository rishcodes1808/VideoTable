//
//  VideoTableViewCell.swift
//  VideoTable
//
//  Created by Rish on 17/10/18.
//  Copyright © 2018 Rish. All rights reserved.
//

import UIKit

class VideoTableViewCell : UITableViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    var video : Video? {
        didSet {
            updateUI()
        }
    }
    
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: video?.thumbnailFileName ?? "")
        thumbnailImageView.layer.cornerRadius = 8
        thumbnailImageView.layer.masksToBounds = true
        usernameLabel.text = video?.authorName
    }
    
}


