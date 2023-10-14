//
//  ThreadCreation.swift
//  ThreadsClone
//
//  Created by Tharindu Kavishna on 2023-10-12.
//

import SwiftUI

struct ThreadCreation: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    VStack(alignment: .leading, spacing: 4) {
                        Text("tharindukavishna")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }.font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                        .font(.subheadline)
                        .foregroundColor(.black)
                        
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Post") {
                            
                        }
                        .opacity(caption.isEmpty ? 0.5 : 1.0)
                        .disabled(caption.isEmpty)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        
                    }
            }
        }
    }
}

struct ThreadCreation_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCreation()
    }
}
