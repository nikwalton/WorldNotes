//
//  ViewController.swift
//  WorldNotes
//
//  Created by Nikolaus Walton on 3/6/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        MapView.showsUserLocation = true
    }
    
    
    // BEGIN: Unwind declarations
     

    @IBAction func unwindComposeCancel(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func unwindComposeAdd(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func unwindViewNotes(sender: UIStoryboardSegue){
    }
    //END: Unwind Declarations
}

