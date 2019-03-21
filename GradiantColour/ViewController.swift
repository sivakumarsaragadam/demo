//
//  ViewController.swift
//  GradiantColour
//
//  Created by Saven Developer on 3/21/19.
//  Copyright © 2019 Vultus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lbl = UILabel(frame: CGRect(x: 50, y: 150, width: 100, height: 100))
        self.view.addSubview(lbl)
        
        setGradientBackground(colorTop: UIColor.green, colorBottom: UIColor.gray, frame: lbl.frame, onView: lbl)
    
    }
    
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor, frame: CGRect, onView: UIView){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [NSNumber(floatLiteral: 0.0), NSNumber(floatLiteral: 1.0)]
        gradientLayer.frame = frame

        onView.layer.insertSublayer(gradientLayer, at: 0)
    }


}

