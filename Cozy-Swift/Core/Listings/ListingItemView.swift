//
//  ListingItemView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        
        VStack(spacing: 8) {
            //Images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //Listing Details
            HStack(alignment: .top){
                // details
                VStack(alignment: .leading, spacing: 3){
                    Text("Jakarta, Cengkareng")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Jl Utama selatan 6")
                        .foregroundStyle(.gray)
                    
                    
                    Text("23-25 May 2024")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4){
                        Text("Rp. 100.0000")
                            .fontWeight(.bold)
                            .font(.headline)
                            .foregroundStyle(.red)
                        Text("/ night")
                            .foregroundStyle(.gray)
                    }
                }
                
                Spacer()
                //rating
                
                ListingStarView()
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
