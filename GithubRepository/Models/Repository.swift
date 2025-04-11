//
//  Repository.swift
//  GithubRepository
//
//  Created by Illia Suvorov on 11.04.2025.
//

import Foundation

struct Repository: Decodable {
    var id: Int
    var fullName: String
    var stargazersCount: Int
    var language: String
}
