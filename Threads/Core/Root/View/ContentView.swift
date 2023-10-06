//
//  ContentView.swift
//  Threads
//
//  Created by Md Miraj Ansari on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                ThreadsTabView()
            }else{
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
