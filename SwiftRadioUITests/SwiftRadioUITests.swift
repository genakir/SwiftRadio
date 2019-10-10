//
//  SwiftRadioUITests.swift
//  SwiftRadioUITests
//
//  Created by Jonah Stiennon on 12/3/15.
//  Copyright © 2015 matthewfecher.com. All rights reserved.
//

import XCTest

class SwiftRadioUITests: XCTestCase {
    
    let app = XCUIApplication()
    let mainScreen = MainScreen()
    let menuScreen = MenuScreen()
    let aboutScreen = AboutScreen()
    let nowPlayingScreen = NowPlayingScreen()
    let shareScreen = ShareScreen()
    
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()
                
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func tapOnCellNumber(index: Int) {
        let cell = app.cells.element(boundBy: index)
        cell.tap()
    }
    
    func verifyNowPlayingScreenElements() {
        waitForBackButton()
        waitForBackgroundImage()
        waitForPlayButton()
        waitForStopButton()
        waitForVolumeSliderAndVerifyItDisabled()
        waitForVolumeMinImage()
        waitForVolumeMaxImage()
        waitForLogoButton()
        waitForShareButton()
        waitForMoreInfoButton()
    }
    
    func waitForBackButton() {
        XCTAssertTrue(nowPlayingScreen.backButton.waitForExistence(timeout: 15), "Button 'Back' isn't present on the NowPlaying screen")
    }
    
    func waitForPlayButton() {
        XCTAssertTrue(nowPlayingScreen.playButton.waitForExistence(timeout: 15), "Button 'Play' isn't present on the NowPlaying screen")
    }
    
    func waitForStopButton() {
        XCTAssertTrue(nowPlayingScreen.stopButton.waitForExistence(timeout: 15), "Button 'Stop' isn't present on the NowPlaying screen")
    }
    
    func tapOnStopButton() {
        nowPlayingScreen.stopButton.tap()
    }
    
    func waitForStationStoppedStaticText() {
        XCTAssertTrue(nowPlayingScreen.stationStoppedStaticText.waitForExistence(timeout: 15), "Static text 'Station Stopped...' isn't present on the NowPlaying screen")
    }
    
    func waitForVolumeSliderAndVerifyItDisabled() {
        XCTAssertTrue(nowPlayingScreen.volumeSlider.waitForExistence(timeout: 15), "Slider 'Volume' isn't present on the NowPlaying screen")
        XCTAssertFalse(nowPlayingScreen.volumeSlider.isEnabled, "Slider 'Volume' isn't disabled on the NowPlaying screen")
    }
    
    func waitForVolumeMinImage() {
        XCTAssertTrue(nowPlayingScreen.volumeMinButton.waitForExistence(timeout: 15), "Button 'Volume Min' isn't present on the NowPlaying screen")
    }
    
    func waitForVolumeMaxImage() {
        XCTAssertTrue(nowPlayingScreen.volumeMaxButton.waitForExistence(timeout: 15), "Button 'Volume Max' isn't present on the NowPlaying screen")
    }
    
    func waitForShareButton() {
        XCTAssertTrue(nowPlayingScreen.shareButton.waitForExistence(timeout: 15), "Button 'Share' isn't present on the NowPlaying screen")
    }
    
    func waitForMoreInfoButton() {
        XCTAssertTrue(nowPlayingScreen.moreInfoButton.waitForExistence(timeout: 15), "Button 'More Info' isn't present on the NowPlaying screen")
    }
    
    func tapOnMoreInfoButton() {
        XCTAssertTrue(nowPlayingScreen.moreInfoButton.waitForExistence(timeout: 15), "Button 'More Info' isn't present on the NowPlaying screen")
        nowPlayingScreen.moreInfoButton.tap()
    }
    
    func tapOnBackButton() {
        nowPlayingScreen.backButton.tap()
    }
    
    func verifyMainScreenElements() {
        waitForSwiftRadioNavigationBar()
        waitForMenuButton()
        waitForBackgroundImage()
        verifyEveryCellHaveTwoStaticTexts()
        waitForNowPlayingBarsImage()
        waitForNowPlayingButtonAndVerifyItDisabled()
    }
    
    func waitForBackgroundImage() {
        XCTAssertTrue(mainScreen.backgroundImage.waitForExistence(timeout: 15), "Background image isn't present on the Main screen")
    }
    
    func waitForSwiftRadioNavigationBar() {
        XCTAssertTrue(mainScreen.swiftRadioNavigationBar.waitForExistence(timeout: 15), "Navigation bar 'Swift Radio' isn't present on the Main screen")
    }
    
    func waitForMenuButton() {
        XCTAssertTrue(mainScreen.menuButton.waitForExistence(timeout: 15), "Button 'Menu' isn't present on the Main screen")
    }
    
    func tapOnMenuButton() {
        mainScreen.menuButton.tap()
    }
    
    func tapOnNowPlayingButton() {
        let nowPlayingButton = app.navigationBars["Swift Radio"].buttons.element(boundBy: 1)
        nowPlayingButton.tap()
    }
    
    func verifyMenuScreenElements() {
        waitForCloseButton()
        waitForSwiftRadioBlackImage()
        waitForAboutButton()
        waitForWebsiteButton()
    }
    
    func goToAboutScreen() {
        menuScreen.aboutButton.tap()
        verifyAboutScreenElements()
    }
    
    func tapOnOkayButton() {
        aboutScreen.okayButton.tap()
    }
    
    func verifyAboutScreenElements() {
        waitForLogoImage()
        waitForOkayButton()
    }
    
    func waitForLogoImage() {
        XCTAssertTrue(aboutScreen.logoImage.waitForExistence(timeout: 15), "Image 'Logo' isn't present on the About screen")
    }
    
    func waitForLogoButton() {
        XCTAssertTrue(nowPlayingScreen.logoButton.waitForExistence(timeout: 15), "Button 'Logo' isn't present on the NowPlaying screen")
    }
    
    func tapOnLogoButton() {
        nowPlayingScreen.logoButton.tap()
    }
    
    func waitForOkayButton() {
        XCTAssertTrue(aboutScreen.okayButton.waitForExistence(timeout: 15), "Button 'Okay' isn't present on the About screen")
    }
    
    func waitForCloseButton() {
        XCTAssertTrue(menuScreen.closeButton.waitForExistence(timeout: 15), "Button 'Close' isn't present on the Menu screen")
    }
    
    func tapOnCloseButton() {
        menuScreen.closeButton.tap()
    }
    
    func waitForSwiftRadioBlackImage() {
        XCTAssertTrue(menuScreen.swiftRadioBlackImage.waitForExistence(timeout: 15), "Image 'swift-radio-black' isn't present on the Menu screen")
    }
    
    func waitForAboutButton() {
        XCTAssertTrue(menuScreen.aboutButton.waitForExistence(timeout: 15), "Button 'About' isn't present on the Menu screen")
    }
    
    func waitForWebsiteButton() {
        XCTAssertTrue(menuScreen.websiteButton.waitForExistence(timeout: 15), "Button 'Website' isn't present on the Menu screen")
    }
    
    func verifyEveryCellHaveTwoStaticTexts() {
        let cellsCount = app.cells.count
        let staticTextCount = app.tables.staticTexts.count
        XCTAssertEqual(cellsCount, staticTextCount / 2, "Some cell(s) missing static text on the Main screen")
    }
    
    func waitForNowPlayingBarsImage() {
        XCTAssertTrue(mainScreen.nowPlayingBarsImage.waitForExistence(timeout: 15), "Image 'NowPlayingBars' isn't present on the Main screen")
    }
    
    func waitForNowPlayingButtonAndVerifyItDisabled() {
        XCTAssertTrue(mainScreen.nowPlayingButton.waitForExistence(timeout: 15), "Button 'nowPlaying' isn't present on the Main screen")
        XCTAssertFalse(mainScreen.nowPlayingButton.isEnabled, "Button 'nowPlaying' isn't disabled")
    }
    
}
