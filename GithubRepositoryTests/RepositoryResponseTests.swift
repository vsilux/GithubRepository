//
//  RepositoryResponseTests.swift
//  GithubRepositoryTests
//
//  Created by Illia Suvorov on 11.04.2025.
//

import XCTest

@testable import GithubRepository

final class RepositoryResponseTests: XCTestCase {

    var sut: RepositoryResponse!

    func test_RepositoryResponse_decodable() throws {
        let pathToJson = Bundle(for: RepositoryTests.self).url(
            forResource: "sampleResponse",
            withExtension: "json"
        )!
        let data = try Data(contentsOf: pathToJson)

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        sut = try decoder.decode(RepositoryResponse.self, from: data)
        XCTAssertEqual(sut.totalCount, 265387)
        XCTAssertNotNil(sut.items)
    }
}
