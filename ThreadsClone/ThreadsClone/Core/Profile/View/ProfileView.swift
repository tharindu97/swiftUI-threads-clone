//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Tharindu Kavishna on 2023-10-12.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // bio and status
            VStack(spacing: 20) {
                
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        // fullname and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Tharindu Kavishna")
                                .font(.title2)
                                .fontWeight(.semibold)

                            Text("tharindukavishna")
                                .font(.subheadline)
                        }
                        
                        Text("Formula 1 driver for Scuderia Ferrati")
                            .font(.footnote)
                        Text("2 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                    
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
               // user content list view
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if(selectedFilter == filter) {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                }else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0...10, id:\.self) { thread in
                            ThreadCell()
                        }
                    }
                }.padding(.vertical, 8)
            }
        }.padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
