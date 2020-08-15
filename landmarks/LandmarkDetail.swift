//
//  ContentView.swift
//  landmarks
//
//  Created by Sudeep on 8/15/20.
//  Copyright © 2020 Sudeep. All rights reserved.
//

import SwiftUI
//describes the view’s content and layout.
struct LandmarkDetail: View {
    var landmark : Landmark
    init(landmark: Landmark){
        self.landmark = landmark
    }
    var body: some View {
        
        VStack{
            MapView(landmark: landmark)
            .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom,-130)
        VStack(alignment: .leading){
            Text(landmark.name)
                .font(.title)
            HStack {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
            
        }
       .padding()
        Spacer()
    }
    }

}

//declares a preview for that view.
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:landmarkData[0])
         .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
