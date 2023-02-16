//
//  SnapshotIssueTests.swift
//  SnapshotIssueTests
//
//  Created by Jon Kneller on 16/02/2023.
//

import XCTest
import SnapshotTesting
import SwiftUI

@testable import SnapshotIssue

final class SnapshotIssueTests: XCTestCase {

    func testSnapshot() throws {
        let vc = UIHostingController(rootView: ContentView())
        assertSnapshot(matching: vc, as: .image(perceptualPrecision: 0.98, size: .init(width: 375, height: 667)))
    }

}
