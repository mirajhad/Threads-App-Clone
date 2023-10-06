//
//  ProfileView.swift
//  Threads
//
//  Created by Md Miraj Ansari on 05/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width/count-20
    }
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators:false){
    //            bio and stats
                VStack (spacing:20){
                    HStack(alignment:.top) {
                        VStack(alignment: .leading, spacing: 12) {
            //                fullname and username
                            VStack(alignment: .leading, spacing: 4 ){
                                Text("Charles Leclerc")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("caarles_leclerc")
                                    .font(.subheadline)
                            }
                            Text("Formula 1 driver for scuderia ferrari")
                                .font(.footnote)
                            
                            Text("2 follower")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        CircularProfileImageView()
                    }
                    Button{
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    
                    VStack{
                        HStack{
                            ForEach(ProfileThreadFilter.allCases){
                                filter in
                                VStack{
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold: .regular)
                                    
                                    if selectedFilter == filter{
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width:filterBarWidth, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width:filterBarWidth, height: 1)
                                    }
                                    
                                }
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        LazyVStack{
                            ForEach(0 ... 10, id:\.self){
                                thread in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        AuthService.shared.signOut()
                    } label:{
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileView()
}
