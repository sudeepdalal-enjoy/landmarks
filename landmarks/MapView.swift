//
//  MapView.swift
//  landmarks
//
//  Created by Sudeep on 8/15/20.
//  Copyright © 2020 Sudeep. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView:   UIViewRepresentable {
    
  
    var location: CLLocationCoordinate2D
    
    init(landmark: Landmark){
        self.location = landmark.locationCoordinate
    }

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: location.latitude, longitude: location.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[0])
    }
}
