//
//  DestinationSearchView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 26/03/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    
    @State private var selectedOptions: DestinationSearchOptions = .location
    
    @State private var startDate = Date()
    @State private var endDate  = Date()
    
    //    @State private var selectedLocation = false
    //    @State private var selectedDates = false
    //    @State private var selectedGuests = false
    var body: some View {
        VStack{
            
            Button {
                show.toggle()
            }label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(.black)
                
            }
            
            VStack(alignment: .leading) {
                if selectedOptions ==  .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius:  8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(.systemGray4))
                    }
                }else{
                    PickerButtonView(title: "Where?", description: "Add your Destination")
                        .onTapGesture {
                            selectedOptions = .location
                        }
                    
                }
                
            }
            .padding()
            .frame(height: selectedOptions == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.easeIn){ selectedOptions = .location }
            }
            
            
            // Date selection view
            VStack(alignment: .leading){
                if selectedOptions == .dates {
                    Text("When's Ur Trip")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                else{
                    
                    //date select view
                    PickerButtonView(title: "When? ", description: "Add your dates")
                }
            }
            .padding()
            .frame(height: selectedOptions == .dates ? 190 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.easeIn){ selectedOptions = .dates }
            }
            
            
            VStack{
                if selectedOptions == .guests {
                    Text("Who's Coming?")
                }else{
                    //num view
                    PickerButtonView(title: "Who?", description: "Add your Guests")
                }
            }
            .padding()
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.easeIn){ selectedOptions = .guests }
            }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct PickerButtonView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            //            .padding()
            //            .fontWeight(.bold)
            //            .background(.white)
            //            .clipShape(RoundedRectangle(cornerRadius: 10))
            //            .padding()
            //            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}
