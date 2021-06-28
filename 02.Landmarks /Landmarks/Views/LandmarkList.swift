//
//  LandmarkList.swift
//  Landmarks
//
//  Created by jwshin on 2021/06/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        // Static way
        //        List {
        //            LandmarkRow(landmark: landmarks[0])
        //            LandmarkRow(landmark: landmarks[1])
        //        }[
        
        /*
         Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
         */
        NavigationView {
            // Dynamic way
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")            
        }
    }
    
    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}
