//
//  ViewController.swift
//  ChangeMapUIActionSheet
//
//  Created by Parikh Dhruvin S. on 4/18/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBAction func btnChangeMap(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Confirm", message: "Please Select Map Type", preferredStyle: .actionSheet)
        
        let standardButton = UIAlertAction(title: "Standard", style: .default, handler: { (action) -> Void in
            //print("Standard Button Tapped")
            self.changeMapType(type: "Standard")
        })
        
        let  satelliteButton = UIAlertAction(title: "Satellite", style: .default, handler: { (action) -> Void in
            //print("Satellite Button Tapped")
            self.changeMapType(type: "Satellite")
            
        })
        
        let  hybridButton = UIAlertAction(title: "Hybrid", style: .default, handler: { (action) -> Void in
            //print("Hybrid Button Tapped")
            self.changeMapType(type: "Hybrid")
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
            //print("Cancel button tapped")
        })
        
        
        alertController.addAction(standardButton)
        alertController.addAction(satelliteButton)
        alertController.addAction(hybridButton)
        alertController.addAction(cancelButton)
        
        //self.navigationController!.present(alertController, animated: true, completion: nil)
        present(alertController, animated: true, completion: nil)
    }
    
    func changeMapType(type:String){
        switch type {
        case "Standard":
           mapView.mapType = MKMapType.standard
        case "Satellite":
            mapView.mapType = MKMapType.satellite
        case "Hybrid":
            mapView.mapType = MKMapType.hybrid
        default: break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

