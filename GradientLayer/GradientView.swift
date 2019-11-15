//
//  GradientView.swift
//  GradientLayer
//
//  Created by shiga on 15/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import UIKit

@IBDesignable class GardientView: UIView {
    
    @IBInspectable var gradientColor1: UIColor = .white {
        didSet{
            creatGradientView()
        }
    }
    
    
    @IBInspectable var gradientColor2: UIColor = .white{
        didSet{
            creatGradientView()
        }
    }
    
    @IBInspectable var startPoint: CGPoint = .zero {
        didSet{
            creatGradientView()
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 0, y: 1) {
        didSet{
            creatGradientView()
        }
    }
    
    
    func creatGradientView(){
        
        let gradientLayer        = CAGradientLayer()
        gradientLayer.colors     = [self.gradientColor1.cgColor, self.gradientColor2.cgColor]
        gradientLayer.startPoint = self.startPoint
        gradientLayer.endPoint   = self.endPoint
        
        gradientLayer.frame = self.bounds
        
        if let topLayer = self.layer.sublayers?.first, topLayer is CAGradientLayer {
            topLayer.removeFromSuperlayer()
        }
        self.layer.addSublayer(gradientLayer)
    }
}
