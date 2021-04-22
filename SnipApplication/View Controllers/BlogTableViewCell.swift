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
    @IBOutlet weak var GPLbl: UILabel!
    @IBOutlet weak var chatBtn: UIButton!
    @IBOutlet weak var suitcaseBtn: UIButton!
    @IBOutlet weak var locationIcon: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var beforeAfterLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    
    
    func formatCell(){
        profImage.layer.cornerRadius = 20
        GPLbl.layer.backgroundColor = UIColor.init(hue: 136/360, saturation: 0.10, brightness: 0.90, alpha: 1).cgColor
        locationIcon.alpha = 0.20
        nameAndLocation.alpha = 0.50
        cityLbl.alpha = 0.50
        beforeAfterLbl.layer.backgroundColor = UIColor.init(hue: 97/360, saturation: 0.43, brightness: 0.85, alpha: 1).cgColor
        
    }
    
    func setCell(blogPost: Feed){
        if let image = blogPost.profPic {
            profImage.image = UIImage.init(data: image)
        }
        if let image = blogPost.beforePic {
            projectImage.image = UIImage.init(data: image)
        }
        nameAndLocation.text = blogPost.name
        hashtagLbl.text = blogPost.hashTags
        descriptionLbl.text = blogPost.description
        GPLbl.text = "GP: \(blogPost.GP ?? "0")"
        cityLbl.text = blogPost.city

    }
    
//    func imageClicked(){
//        if let image = blogPost.afterPic {
//            profImage.image = UIImage.init(data: image)
//        }
//    }
    
    @IBAction func imageClicked(_ sender: UIGestureRecognizer) {

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
