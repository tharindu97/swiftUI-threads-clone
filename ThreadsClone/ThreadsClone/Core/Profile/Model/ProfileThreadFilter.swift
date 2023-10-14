//
//  ProfileThreadFilter.swift
//  ThreadsClone
//
//  Created by Tharindu Kavishna on 2023-10-12.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
            case .threads: return "Threads"
            case .replies: return "Replies"
        }
    }
    
    var id: Int {return self.rawValue}
}
