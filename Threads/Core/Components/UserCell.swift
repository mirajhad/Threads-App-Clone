//
//  UserCell.swift
//  Threads
//
//  Created by Md Miraj Ansari on 05/10/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
         CircularProfileImageView()
            
            VStack(alignment: .leading
            ){
                Text("Virat  kholi is best")
                    .fontWeight(.semibold)
                Text("Cicketer")
                
            }
            .font(.footnote)
            Spacer()
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay{
                    RoundedRectangle( cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth:1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
