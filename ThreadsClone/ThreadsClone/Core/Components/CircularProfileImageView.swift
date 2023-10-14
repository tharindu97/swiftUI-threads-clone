//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Tharindu Kavishna on 2023-10-12.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("man")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
