//
//  Ind03_Wasserott_RebeccaUITestsLaunchTests.swift
//  Ind03_Wasserott_RebeccaUITests
//
//  Created by Rebecca Wasserott on 3/2/22.
//

import XCTest

class Ind03_Wasserott_RebeccaUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
