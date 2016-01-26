//
//  AddRestaurantController.swift
//  FoodPin
//
//  Created by Mike Pitre on 1/25/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class AddRestaurantController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var restaurantName: UITextField!
    @IBOutlet weak var restaurantType: UITextField!
    @IBOutlet weak var restaurantLocation: UITextField!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    var isVisited = true
    let foodPinPink = UIColor(red: 236.0/255, green: 102.0/255, blue: 111.0/255, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .PhotoLibrary
                
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        if restaurantName.text != "" && restaurantType.text != "" && restaurantLocation.text != "" {
            print("Name: \(restaurantName.text))")
            print("Type: \(restaurantType.text))")
            print("Location: \(restaurantLocation.text))")
            print("isVisited: \(isVisited)")
            
            dismissViewControllerAnimated(true, completion: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Oops!", message: "One of the fields has been left blank. Please fill all the fields out.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func beenHereButtonPressed(sender: UIButton) {
        if sender == yesButton {
            isVisited = true
            yesButton.backgroundColor = foodPinPink
            noButton.backgroundColor = UIColor.lightGrayColor()
        } else if sender == noButton {
            isVisited = false
            yesButton.backgroundColor = UIColor.lightGrayColor()
            noButton.backgroundColor = foodPinPink
        }
    }
    
    

}
