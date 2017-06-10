//
//  MapsTests.swift
//  MapsTests
//
//  Created by Afzal Najam on 2017-06-04.
//  Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import XCTest
@testable import Maps

class MapsTests: XCTestCase {

    func testUserInitializeSucceeds() {
        let zeroRatingUser = User.init(name: "Zero", photo: nil)
        XCTAssertNotNil(zeroRatingUser)
    }

    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testUserInitializationFails() {
        let emptyStringUser = User.init(name: "", photo: nil)

        XCTAssertNil(emptyStringUser)
    }
    
}
