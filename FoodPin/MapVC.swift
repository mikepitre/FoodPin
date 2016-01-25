//
//  MapVC.swift
//  FoodPin
//
//  Created by Mike Pitre on 1/21/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location) { (placemarks, error) -> Void in
            if error != nil {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                
                if placemarks.count > 0 {
                    
                    let placemark = placemarks[0]
                
                    let annotation = MKPointAnnotation()
                    annotation.title = self.restaurant.name
                    annotation.subtitle = self.restaurant.type
                
                    if let location = placemark.location {
                        annotation.coordinate = location.coordinate
                        self.mapView.showAnnotations([annotation], animated: true)
                        self.mapView.selectAnnotation(annotation, animated: true)
                    }
                }
            }
        }
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        let identifier = "MyPin"
        
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        var annotationView:MKPinAnnotationView? = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        }
        
        let leftIconView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(named: restaurant.image)
        annotationView?.leftCalloutAccessoryView = leftIconView
        annotationView?.pinTintColor = UIColor(red: 242/255, green: 116/255, blue: 119/255, alpha: 1)
        
        return annotationView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
