//
//  User.swift
//  SwiftUI-TodoList-Tutorial
//
//  Created by Raphael Iyin on 10/19/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
