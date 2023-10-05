//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Md Miraj Ansari on 05/10/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("virat")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
