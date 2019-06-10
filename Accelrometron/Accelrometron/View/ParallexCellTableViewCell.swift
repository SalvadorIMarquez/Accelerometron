//
//  ParallexCellTableViewCell.swift
//  Accelrometron
//
//  Created by Salvador Marquez on 6/7/19.
//  Copyright © 2019 Citsa Digital. All rights reserved.
//

import UIKit

class ParallexCellTableViewCell: UITableViewCell {


    @IBOutlet weak var ivItem: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax() 
        // Initialization code
        
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String){
        ivItem.image = image
        lblDescription.text = desc 
    }
    
    func setupParallax(){
        let xmin = CFloat(-20)
        let xmax = CGFloat(20)
        let ymin = CFloat(-20)
        let ymax = CGFloat(20)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = xmin
        xMotion.maximumRelativeValue = xmax
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = ymin
        yMotion.maximumRelativeValue = ymax
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        ivItem.addMotionEffect(motionEffectGroup)
    }

}
