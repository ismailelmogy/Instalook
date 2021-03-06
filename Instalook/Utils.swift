//
//  Utils.swift
//  Instalook
//
//  Created by jets on 9/22/1440 AH.
//  Copyright © 1440 AH instalook. All rights reserved.
//

import Foundation
import UIKit

struct Utils {
    
    public static func roundImage(imageView : UIImageView){
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.clipsToBounds = true
    }
    
    public static func roundBtn(button : UIButton){
        button.layer.cornerRadius = 9
        button.layer.borderWidth = 1
    }
}
