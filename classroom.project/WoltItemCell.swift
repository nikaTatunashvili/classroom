//
//  WoltItemCell.swift
//  classroom.project
//
//  Created by Teo Elisashvili on 21.12.20.
//

import UIKit

class WoltItemCell: UICollectionViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func setup(_ index: IndexPath) {
        view.layer.cornerRadius = 6
        titleLabel.text = "Menu \(index)"
        mainImageView.image = UIImage(named: ["01", "02", "03"].randomElement() ?? "")
    }
}
