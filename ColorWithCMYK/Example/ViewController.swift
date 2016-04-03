//
//  ViewController.swift
//  ColorWithCMYK
//
//  Created by GabrielMassana on 03/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let redColor = UIColor.colorWithCMYK(c: 0.0, m: 1.0, y: 1.0, k: 0.0)
        let greenColor = UIColor.colorWithCMYK(c: 1.0, m: 0.0, y: 1.0, k: 0.0)
        let blueColor = UIColor.colorWithCMYK(c: 1.0, m: 1.0, y: 0.0, k: 0.0)
        let blackColor = UIColor.colorWithCMYK(c: 0.0, m: 0.0, y: 0.0, k: 1.0)
        let whiteColor = UIColor.colorWithCMYK(c: 0.0, m: 0.0, y: 0.0, k: 0.0)
        
        print(redColor)
        print(greenColor)
        print(blueColor)
        print(blackColor)
        print(whiteColor)
    }
}

