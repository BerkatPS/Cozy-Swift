//
//  ExploreView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            }else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 40){
                        ForEach(viewModel.listings){ listing in
                            NavigationLink(value: listing){
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                        }
                    }
                    .padding(.top, 10)
                }
                .padding()
                .navigationDestination(for: Int.self){listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
