//
//  ContentView.swift
//  landmarks
//
//  Created by Sudeep on 8/15/20.
//  Copyright © 2020 Sudeep. All rights reserved.
//

import SwiftUI
//describes the view’s content and layout.
struct ContentView: View {
    var body: some View {
        
        VStack{
            MapView()
            .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom,-130)
        VStack(alignment: .leading){
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
        }
       .padding()
        Spacer()
    }
    }

}

//declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
