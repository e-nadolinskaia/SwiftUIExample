//
//  AddNewTaskTest.swift
//  ChantalUITests
//
//  Created by Ekaterina Nadolinskaya on 30.05.2022.
//  Copyright © 2022 Monte Thakkar. All rights reserved.
//

import XCTest

class SmokeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        XCUIApplication().terminate()
    }
    
    func testAddNewTask() {
        MainPage()
            .tapNavigationBarAddButton()
            .tapAlertTextField()
            .enterTaskName()
            .tapAddNewTask()
    }
    
    func testNewTaskExistence() {
        MainPage()
            .tapNavigationBarAddButton()
            .tapAlertTextField()
            .enterTaskName()
            .tapAddNewTask()
            .checkNewTaskAdding()
    }
    
    func testRemoveNewTask() {
        MainPage()
            .tapNavigationBarAddButton()
            .tapAlertTextField()
            .enterTaskName()
            .tapAddNewTask()
            .deletingNewTask()
    }
    
    func testExictenceAfterRemoving() {
        MainPage()
            .tapNavigationBarAddButton()
            .tapAlertTextField()
            .enterTaskName()
            .tapAddNewTask()
            .deletingNewTask()
            .checExistenceAfterRemoving()
    
    }
    
}

