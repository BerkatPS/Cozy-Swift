//
//  WishlistsView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 24/03/24.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to view your Wishlists")
                        .font(.headline)
                    
                    Text("You can create, View or edit Wishlist once you've logged in")
                        .font(.footnote)
                }
                Button{
                    print("Log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.primary)
                        .clipShape(RoundedRectangle(cornerRadius: 10 ))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
