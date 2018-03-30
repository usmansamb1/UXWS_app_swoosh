//
//  BorderBtn.swift
//  UXUS APP SWOOSH
//
//  Created by USMAN NAWAZ on 30/03/2018.
//  Copyright © 2018 USMAN NAWAZ. All rights reserved.
//

import UIKit

class BorderBtn: UIButton {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.3
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5.0
        layer.backgroundColor=UIColor.darkGray.cgColor
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
