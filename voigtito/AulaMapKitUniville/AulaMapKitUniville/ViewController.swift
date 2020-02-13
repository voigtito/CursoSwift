//
//  ViewController.swift
//  AulaMapKitUniville
//
//  Created by Student on 13/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapkit: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapkit.showsUserLocation = true
        addGesture()
        setupLocationManager()
        
    }
    
    //primeira funcao
    func setupLocationManager() {
        
        //para funcionar deve chamar a CLLocationManagerDelegate
        locationManager.delegate = self
        
        //pega a localizacao em alta precisao
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //pede permissao para utilizar localizacao do user
        locationManager.requestWhenInUseAuthorization()
        
        //sempre atualiza a localizacao
        locationManager.startUpdatingLocation()
    }

    //segunda funcao
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            
            if let location = locations.last {
                
                userLocation = location
                print( "A localizaçao do usuário é \( userLocation.coordinate )" )
                
            }
            
        }
        
    }
    
    //terceira função
    @objc func addAnnotationToMap( gestureRecognizer: UIGestureRecognizer ) {
        
        let touchPoint = gestureRecognizer.location( in: mapkit )
        
        let newCordinate: CLLocationCoordinate2D = mapkit.convert( touchPoint, toCoordinateFrom: mapkit )
        
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCordinate
        
        newAnnotation.title = "Voigt"
        
        newAnnotation.subtitle = String(describing: "Latitude \(newCordinate.latitude) / Longitude \(newCordinate.longitude)" )
        
        mapkit.addAnnotation( newAnnotation )
        
    }
    
    //quarta função
    func addGesture () {
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector( addAnnotationToMap(gestureRecognizer:)))
        
        //tempo que deve pressionar
        longPress.minimumPressDuration = 0.8
        mapkit.addGestureRecognizer( longPress )
        
    }
    
}

