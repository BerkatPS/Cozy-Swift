//
//  ListingStarView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ListingStarView: View {
    let listing: Listing
    
    var body: some View {
        HStack(spacing: 2){
            Image(systemName: "star.fill")
                .foregroundColor(.warning)
            
            Text("\(listing.rating)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ListingStarView(listing: DeveloperPreview.shared.listings[0])
}
