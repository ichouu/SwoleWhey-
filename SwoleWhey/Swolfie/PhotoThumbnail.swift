//
//  PhotoThumbnail.swift
//  SwoleWhey
//
//  Created by Eric Chou on 1/28/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//
import UIKit

class PhotoThumbnail: UICollectionViewCell {
    
    @IBOutlet var imgView : UIImageView!
    
    
    func setThumbnailImage(thumbnailImage: UIImage){
        self.imgView.image = thumbnailImage
    }
    
}
