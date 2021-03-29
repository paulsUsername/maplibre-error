//
//  ViewController.swift
//  test-123
//
//  Created by Paul Finlay on 28/03/2021.
//

import UIKit
import Mapbox
import CoreLocation

class ViewController: UIViewController, MGLMapViewDelegate {
    
    var mapview: MGLMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapview = MGLMapView(frame: self.view.frame)
        
        mapview.delegate = self
        
        self.view.addSubview(mapview)
        
        
        mapview.locationManager.requestWhenInUseAuthorization()
        
        mapview.styleURL = MGLStyle.satelliteStyleURL
        
        mapview.showsUserLocation = true
        mapview.userTrackingMode = .followWithHeading
    }
    
    @objc func buttonClicked() {
        
    }


}

