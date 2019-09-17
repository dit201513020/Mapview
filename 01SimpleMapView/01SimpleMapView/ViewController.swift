//
//  ViewController.swift
//  01SimpleMapView
//
//  Created by D7703_18 on 2019. 9. 17..
//  Copyright © 2019년 A. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.지도의 중심점 지정
       let center = CLLocationCoordinate2D(latitude: 35.164952, longitude: 129.071399)
        
        //2.지도 변경 지정
        
        //3.지도의 보여주는 영역인 region 만들기
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 300, longitudinalMeters: 300)
        
        //4.mapview에 설정하기
        mapView.setRegion(region, animated: true)
        
        // center에 핀꼽기
        let anno01 = MKPointAnnotation()
        anno01.coordinate = center
        anno01.title = "DIT 동의과학대학교"
        anno01.subtitle = "나의 꿈이 자라는곳"
        mapView.addAnnotation(anno01)
        
        //송상현 광장 35.164472, 129.064951
        let anno02 = MKPointAnnotation()
        anno02.coordinate.latitude = 35.164472
        anno02.coordinate.longitude = 129.064951
        anno02.title = "송상현 광장"
        anno02.subtitle = "푸른 잔디밭이 좋은곳"
        mapView.addAnnotation(anno02)
        
        //번개반점 35.167643, 129.070576
        let anno03 = MKPointAnnotation()
        anno03.coordinate.latitude = 35.167643
        anno03.coordinate.longitude = 129.070576
        anno03.title = "번개반점"
        anno03.subtitle = "간짜장이 맛있는 곳"
        mapView.addAnnotation(anno03)
        
    }


}

