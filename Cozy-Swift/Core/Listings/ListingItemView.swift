//
//  ListingItemView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
        
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
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Jl Utama selatan 6")
                        .foregroundStyle(.gray)
                    
                    
                    Text("23-25 May 2024")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4){
                        Text("Rp. \(listing.pricePerNight)")
                            .fontWeight(.bold)
                            .font(.headline)
                            .foregroundStyle(.red)
                        Text("/ night")
                            .foregroundStyle(.gray)
                    }
                }
                
                Spacer()
                //rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .foregroundColor(.warning)
                    
                    Text("\(listing.rating)")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
