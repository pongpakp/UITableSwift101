//
//  ImageDataTableViewCell.swift
//  Test
//
//  Created by Chong on 17/1/2568 BE.
//

import UIKit

class ImageDataTableViewCell: UITableViewCell {
    @IBOutlet var bgImage: UIImageView!
    @IBOutlet var author: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDataImage(data: ImageDataModel) {
        bgImage.image = UIImage(named: data.url)
        author.text = data.author
    }
}
