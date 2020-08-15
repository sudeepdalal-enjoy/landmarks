//
//  LandmarkList.swift
//  landmarks
//
//  Created by Sudeep on 8/15/20.
//  Copyright © 2020 Sudeep. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
        List(landmarkData )
              { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark))
               {
                 LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    
    }
    }


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad"], id: \.self) { deviceName in
        LandmarkList()
         .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
