//
//  ViewController.swift
//  GradientLayer
//
//  Created by shiga on 15/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createGradientLayer()
       
    }

    func createGradientLayer() {
        let gradientLayer = CAGradientLayer()
               gradientLayer.colors = [UIColor.red, UIColor.black]
                   
               gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
               gradientLayer.endPoint   = CGPoint(x: 1.0, y: 1.0)
               
        gradientLayer.frame = gradientView.bounds
               gradientView.layer.addSublayer(gradientLayer)
    }
}

