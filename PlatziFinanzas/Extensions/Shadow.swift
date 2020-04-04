//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by Jesus Bossa on 1/04/20.
//  Copyright © 2020 Jesus Bossa. All rights reserved.
//

import UIKit

extension UIView {
    var borderUIcolor: UIColor {
        get {
            guard let color = layer.borderColor else {
                return UIColor.black
            }
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
