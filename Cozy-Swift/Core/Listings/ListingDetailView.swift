//
//  ListingDetailView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 23/03/24.
//

import SwiftUI
import MapKit


struct ListingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            
            
            VStack(alignment: .leading, spacing: 8 ){
                Text("COVE HOTEL ")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                // Description
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        ListingStarView()
                            .font(.callout)
                        
                        Text(" | ")
                        
                        Text("120 Reviews")
                            .font(.caption)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image(systemName: "heart.fill")
                            .font(.title2)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.red)
                            .background(.lightRed)
                            .cornerRadius(10)
                    }
                    Text("Jakarta Barat, Cengkareng")
                        .font(.caption)
                    
                    Divider()
                    
                    Text("Description")
                        .font(.headline)
                        .padding(.bottom)
                        .padding(.top)
                    
                    Text("Selamat datang di The Serene Haven Hotel, sebuah destinasi eksklusif di tepi pantai yang menawarkan kombinasi sempurna antara kemewahan modern dan keindahan alam yang menakjubkan. Terletak di pinggiran kota dengan pemandangan spektakuler Samudera Pasifik yang membentang luas, hotel kami menawarkan tempat perlindungan yang damai dari hiruk-pikuk kehidupan sehari-hari.")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    
                    
                }
                // Main Facility
                VStack(alignment: .leading, spacing: 16){
                    HStack{
                        Text("Main Facility")
                            .font(.headline)
                            .padding(.top)
                        
                        Spacer()
                        Text("See All ")
                            .font(.subheadline)
                            .padding(.top)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    ForEach(0 ..< 2){ feature in
                        HStack(spacing: 12){
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.success)
                            
                            VStack(alignment: .leading){
                                Text("24 hour front desk")
                            }
                        }
                    }
                }
                
                // Advantage Of this Property
                VStack(alignment: .leading, spacing: 5){
                    Text("Advantage of this Property")
                        .font(.headline)
                        .padding(.bottom)
                        .padding(.top)
                    HStack(spacing: 20){
                        ListingImageFacilityView(imageName: "wifi.router.fill", textImage: "Wifi")
                        ListingImageFacilityView(imageName: "parkingsign", textImage: "Parking")
                        ListingImageFacilityView(imageName: "figure.pool.swim", textImage: "Swim")
                        ListingImageFacilityView(imageName: "air.conditioner.horizontal.fill", textImage: "AC")
                        
                    }
                }
                
                //Where you'll be
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll be")
                        .padding(.top)
                        .font(.headline)
                    
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 80)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Start From")
                            .font(.subheadline)
                        Text("Rp.100.000")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.red)
                        
                        Text("Before Taxes")
                            .font(.subheadline)
                        
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 50)
                            .background(.primary)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 25)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
