//
//  MainScreen.swift
//  SwiftRadioUITests
//
//  Created by Kiryushatov, Gennadii on 10/10/19.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct MainScreen {
    let swiftRadioNavigationBar = XCUIApplication().navigationBars["Swift Radio"]
    let menuButton = XCUIApplication().navigationBars["Swift Radio"].buttons.firstMatch
    let backgroundImage = XCUIApplication().images["background"]
    let nowPlayingBarsImage = XCUIApplication().images["NowPlayingBars"]
    let nowPlayingButton = XCUIApplication().buttons["nowPlaying"]

}
