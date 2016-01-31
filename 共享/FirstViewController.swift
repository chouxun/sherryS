//
//  FirstViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/17.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,MAMapViewDelegate,AMapSearchDelegate {

    
    var mapView = MAMapView()
    var search:AMapSearchAPI?
    var currentLoacation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMap()
        MAMapServices.sharedServices().apiKey = APIKey
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadMap(){
        mapView = MAMapView(frame:self.view.bounds)
        mapView.delegate = self
        self.view.addSubview(mapView)
        let compassX = mapView.compassOrigin.x
        let scaleX = mapView.scaleOrigin.x
        mapView.compassOrigin = CGPointMake(compassX, 21)
        mapView.scaleOrigin = CGPointMake(scaleX, 21)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = MAUserTrackingMode.Follow
        mapView.setZoomLevel(15.1, animated: true)
    }
    
    func loadSearch(){
        search = AMapSearchAPI()
        search?.delegate = self
    }
    
    func search(searchRequest: AnyObject, error errInfo: String){
        print("request:\(searchRequest),error:\(errInfo)")
    
    }
    
    func reverseGeocoding(){
        let coordinate = currentLoacation.coordinate
        let regeo:AMapReGeocodeSearchRequest = AMapReGeocodeSearchRequest()
        regeo.location = AMapGeoPoint.locationWithLatitude(CGFloat(coordinate.latitude), longitude: CGFloat(coordinate.longitude))
        print("regeo:\(regeo)")
        self.search!.AMapReGoecodeSearch(regeo)
    }
    
    func mapView(mapView: MAMapView!, didUpdateUserLocation userLocation: MAUserLocation!, updatingLocation: Bool) {
        if updatingLocation{
            currentLoacation = userLocation.location
        }
        
        func mapView(mapView:MAMapView, didSelectAnnotationView view: MAAnnotationView){
            if view.annotation.isKindOfClass(MAUserLocation){
                reverseGeocoding()
            }
        }
        
        func onReGeocodeSearchDone(request: AMapReGeocodeSearchRequest,response: AMapReGeocodeSearchResponse){
            print("request:\(request)")
            print("response:\(response)")
            
            if(response.regeocode != nil){
                var title = response.regeocode.addressComponent.city
                var length: Int{
                    return title.characters.count
                }
                if length == 0{
                    title = response.regeocode.addressComponent.province
                }
            }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


