//
//  Post.swift
//  URLSession
//
//  Created by RAMA GANGADHAR KANDA on 28/12/20.
//

import Foundation

// MARK: - PostElement
class PostElement: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }

    init(userID: Int, id: Int, title: String, body: String) {
        self.userID = userID
        self.id = id
        self.title = title
        self.body = body
    }
}
