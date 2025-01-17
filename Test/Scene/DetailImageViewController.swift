//
//  ImageDetailViewController.swift
//  Test
//
//  Created by Chong on 17/1/2568 BE.
//

import UIKit

class DetailImageViewController: UIViewController {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setDetail(detail: ImageDataModel) {
        loadViewIfNeeded()
        authorLabel.text = detail.author
        bgImage.image = UIImage(named: detail.url)
    }
}
