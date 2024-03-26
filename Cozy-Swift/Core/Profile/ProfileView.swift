//
//  ProfileView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 24/03/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        //Profile Login View
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Log in to start planning your next Trip")
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
            HStack{
                Text("Don't Have an Account?")
                
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }
            
            
            
            VStack(spacing: 20){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "heart", title: "Favorites")
                ProfileOptionRowView(imageName: "message", title: "Message")
                ProfileOptionRowView(imageName: "ticket", title: "My Bookings")
                ProfileOptionRowView(imageName: "bell", title: "Notifications")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Help Center")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}


