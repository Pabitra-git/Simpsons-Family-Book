//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Pabitra Ranjan Sahoo on 10/11/23.
//

import UIKit

class detailsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        let imageName = selectedSimpson?.image
        imageView.image = UIImage(named: imageName!)
    }

}
