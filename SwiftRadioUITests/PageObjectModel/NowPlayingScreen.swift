//
//  NowPlayingScreen.swift
//  SwiftRadioUITests
//
//  Created by Kiryushatov, Gennadii on 10/10/19.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct NowPlayingScreen {
    
    let backButton = XCUIApplication().buttons["Back"]
    let playButton = XCUIApplication().buttons["btn play"]
    let stopButton = XCUIApplication().buttons["btn stop"]
    let volumeSlider = XCUIApplication().sliders["Volume"]
    let volumeMinButton = XCUIApplication().images["vol-min"]
    let volumeMaxButton = XCUIApplication().images["vol-max"]
    let shareButton = XCUIApplication().buttons["share"]
    let moreInfoButton = XCUIApplication().buttons["More Info"]
    let logoButton = XCUIApplication().buttons["logo"]
    let stationStoppedStaticText = XCUIApplication().staticTexts["Station Stopped..."]
    
}
