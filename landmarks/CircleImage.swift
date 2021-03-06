//
//  CircleImage.swift
//  landmarks
//
//  Created by Sudeep on 8/15/20.
//  Copyright © 2020 Sudeep. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        
        image.padding(1.0)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white ,lineWidth: 4)).shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:landmarkData[0].image)
    }
}
