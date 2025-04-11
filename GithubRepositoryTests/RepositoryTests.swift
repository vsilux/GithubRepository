//
//  RepositoryTests.swift
//  GithubRepositoryTests
//
//  Created by Illia Suvorov on 11.04.2025.
//

import XCTest

@testable import GithubRepository

final class RepositoryTests: XCTestCase {

    var sut: Repository!

    func test_Repository_decoding() {
        let pathToJson = Bundle(for: RepositoryTests.self).url(
            forResource: "sampleRepository",
            withExtension: "json"
        )!
        let data = try! Data(contentsOf: pathToJson)

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        sut = try! decoder.decode(Repository.self, from: data)
        XCTAssertEqual(sut.id, 44_838_949)
        XCTAssertEqual(sut.fullName, "apple/swift")
        XCTAssertEqual(sut.stargazersCount, 61951)
        XCTAssertEqual(sut.language, "C++")
    }

}
