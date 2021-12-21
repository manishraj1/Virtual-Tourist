//
//  CollectionViewCell.swift
//  VirtualTourist1
//
//  Created by Manish raj(MR) on 20/12/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    
    //code for activity indicator
    lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.center = contentView.center
        contentView.addSubview(activityIndicator)
        return activityIndicator
    }()
}
