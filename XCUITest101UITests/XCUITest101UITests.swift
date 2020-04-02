//
//  XCUITest101UITests.swift
//  XCUITest101UITests
//
//  Created by Shashikant Jagtap on 24/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUITest101UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func takeScreenshot(name: String) {
        let fullScreenshot = XCUIScreen.main.screenshot()

        let screenshot = XCTAttachment(uniformTypeIdentifier: "public.png", name: "Screenshot-\(name)-\(UIDevice.current.name).png", payload: fullScreenshot.pngRepresentation, userInfo: nil)
        screenshot.lifetime = .keepAlways
        add(screenshot)
    }
    
    func testRefactored() {
        let app = XCUIApplication()
        app.buttons["enter"].tap()
        takeScreenshot(name: "test")
        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
    
}
