//
//  RestaurantDetailVC.swift
//  FoodPin
//
//  Created by Mike Pitre on 1/19/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class RestaurantDetailVC: UIViewController {
    
    var restaurant: Restaurant!
    
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantLocationLabel: UILabel!
    @IBOutlet weak var restaurantTypeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantImageView.image = UIImage(named: restaurant.image)
        restaurantImageView.clipsToBounds = true
        
        restaurantNameLabel.text = restaurant.name
        restaurantTypeLabel.text = restaurant.type
        restaurantLocationLabel.text = restaurant.location

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
