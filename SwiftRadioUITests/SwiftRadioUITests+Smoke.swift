//
//  SwiftRadioUITests+Smoke.swift
//  SwiftRadioUITests
//
//  Created by Kiryushatov, Gennadii on 10/09/19.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import XCTest

extension SwiftRadioUITests {

    func testMainScreen() {
        verifyMainScreenElements()
    }
    
    func testMenuScreen() {
        tapOnMenuButton()
        verifyMenuScreenElements()
        goToAboutScreen()
        tapOnOkayButton()
        tapOnCloseButton()
        verifyMainScreenElements()
    }
    
    func testNowPlayingScreenOnEveryStation() {
        let cellsCount = app.cells.count
        for index in 0..<cellsCount {
            tapOnCellNumber(index: index)
            verifyNowPlayingScreenElements()
            tapOnBackButton()
        }
    }
    
    func testNowPlayingScreenButtons() {
        tapOnCellNumber(index: 1)
        verifyNowPlayingScreenElements()
        tapOnStopButton()
        waitForStationStoppedStaticText()
        tapOnLogoButton()
        verifyAboutScreenElements()
        tapOnOkayButton()
        tapOnMoreInfoButton()
        tapOnOkayButton()
        verifyNowPlayingScreenElements()
    }
    
    func testNowPlayingButton() {
        tapOnCellNumber(index: 0)
        verifyNowPlayingScreenElements()
        tapOnBackButton()
        tapOnNowPlayingButton()
        verifyNowPlayingScreenElements()
    }

}
