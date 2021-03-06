//
//  ContentView.swift
//  Landmarks
//
//  Created by Kweku on 07/08/2020.
//  Copyright © 2020 Kweku. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text(landmark.name)
                    .font(.title)
               HStack{
                Text(landmark.park)
                .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
                }
            }.padding()
            
             Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
