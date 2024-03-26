//
//  ListingImageFacilityView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ListingImageFacilityView: View {
    
    var imageName: String
    var textImage: String
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .fontWeight(.bold)
            Text(textImage)
                .font(.system(size: 10, weight: .semibold))

        }
        .frame(width: 70,height: 70)
        .background(.lightPrimary)
        .cornerRadius(10)
        .foregroundColor(.accent)
    }
        
}

#Preview {
    ListingImageFacilityView(imageName: "wifi.router.fill",
                             textImage: "Wifi"
    )
}
