//
//  RoundedCornerView.swift
//  Quiz Quest
//
//  Created by Abdul Basit on 07/07/2023.
//

import UIKit
@IBDesignable
class RoundedCornerView: UILabel {

    // if cornerRadius variable is set/changed, change the corner radius of the UIView
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
