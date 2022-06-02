//
//  BaseTest.swift
//  ChantalUITests
//
//  Created by Ekaterina Nadolinskaya on 30.05.2022.
//  Copyright © 2022 Monte Thakkar. All rights reserved.
//

import XCTest

public class BaseTest {
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    required init(timeout: TimeInterval = 15, completion: Completion = nil) {
    completion?()
    }
}

