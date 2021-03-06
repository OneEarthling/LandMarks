//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Nadya K on 17.05.2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View{
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)){
                LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
            
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 12 Pro"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
