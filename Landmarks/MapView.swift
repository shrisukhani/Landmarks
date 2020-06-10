//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Shri Sukhani on 6/10/20.
//  Copyright © 2020 Shri Sukhani. All rights reserved.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
