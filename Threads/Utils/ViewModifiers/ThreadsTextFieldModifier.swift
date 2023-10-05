//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Md Miraj Ansari on 02/10/23.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
