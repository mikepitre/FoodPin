//
//  ReviewVC.swift
//  FoodPin
//
//  Created by Mike Pitre on 1/20/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class ReviewVC: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
