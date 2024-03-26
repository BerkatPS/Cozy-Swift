//
//  ProfileOptionRowView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 24/03/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    var imageName: String
    var title: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
