//
//  BlogTableViewCell.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/21/21.
//

import UIKit

class BlogTableViewCell: UITableViewCell {

    @IBOutlet weak var profImage: UIImageView!
    @IBOutlet weak var nameAndLocation: UILabel!
    @IBOutlet weak var projectImage: UIImageView!
    @IBOutlet weak var hashtagLbl: UILabel!
    @IBOutlet weak var descriptionTV: UITextView!
    @IBOutlet weak var GPLbl: UILabel!
    @IBOutlet weak var chatBtn: UIButton!
    @IBOutlet weak var suitcaseBtn: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
