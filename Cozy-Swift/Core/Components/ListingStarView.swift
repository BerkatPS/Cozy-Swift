//
//  ListingStarView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ListingStarView: View {
    var body: some View {
        HStack(spacing: 2){
            Image(systemName: "star.fill")
                .foregroundColor(.warning)
            
            Text("4.80")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ListingStarView()
}
