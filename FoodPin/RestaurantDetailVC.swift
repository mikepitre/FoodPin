//
//  RestaurantDetailVC.swift
//  FoodPin
//
//  Created by Mike Pitre on 1/19/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class RestaurantDetailVC: UIViewController {
    
    var restaurantImage = ""
    
    @IBOutlet weak var restaurantImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantImageView.image = UIImage(named: restaurantImage)
        restaurantImageView.clipsToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
