//
//  RepositoryResponse.swift
//  GithubRepository
//
//  Created by Illia Suvorov on 11.04.2025.
//

import Foundation

struct RepositoryResponse: Decodable {
    var totalCount: Int
    var items: [Repository]
}
