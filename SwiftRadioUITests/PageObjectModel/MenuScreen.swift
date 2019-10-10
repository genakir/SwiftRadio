//
//  MenuScreen.swift
//  SwiftRadioUITests
//
//  Created by Kiryushatov, Gennadii on 10/10/19.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct MenuScreen {
    
    let closeButton = XCUIApplication().buttons["btn close"]
    let aboutButton = XCUIApplication().buttons["About"]
    let swiftRadioBlackImage = XCUIApplication().images["swift-radio-black"]
    let websiteButton = XCUIApplication().buttons["Website"]

}
