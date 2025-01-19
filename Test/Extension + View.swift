//
//  Extension + View.swift
//  Test
//
//  Created by Chong on 19/1/2568 BE.
//

import UIKit

extension UIView {
    func applyGradient(colorArray: [CGColor]) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colorArray
        gradientLayer.locations = [0.0, 1.0]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            self.backgroundColor = .clear
            gradientLayer.frame = self.bounds
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
}
