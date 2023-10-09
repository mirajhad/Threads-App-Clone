//
//  Model.swift
//  Threads
//
//  Created by Md Miraj Ansari on 07/10/23.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: String?
    let bio: String?
}
