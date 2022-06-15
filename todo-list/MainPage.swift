//
//  MainPage.swift
//  ChantalUITests
//
//  Created by Ekaterina Nadolinskaya on 30.05.2022.
//  Copyright © 2022 Monte Thakkar. All rights reserved.
//

import XCTest

public class MainPage: BaseTest {
    
    lazy var navigationBarAddButton = app.navigationBars.buttons["Add"]
    lazy var alertTextField = app.alerts.textFields["Enter task name..."]
    lazy var alertAddButton = app.alerts.buttons["Add"]
    lazy var newTaskName = "Bonjure, jopta"
    lazy var newTaskTableCell = app.staticTexts[newTaskName]
    lazy var deleteButton = app.tables.buttons["delete"]
    
    func tapNavigationBarAddButton(completion: Completion = nil) -> Self {
        navigationBarAddButton.tap()
        return self
    }
    
    func tapAlertTextField(completion: Completion = nil) -> Self {
        alertTextField.tap()
        return self
    }
    
    func enterTaskName(completion: Completion = nil) -> Self {
        alertTextField.typeText(newTaskName)
        return self
    }
    
    func tapAddNewTask(completion: Completion = nil) -> Self {
        alertAddButton.tap()
        return self
    }
    
    func checkNewTaskAdding(completion: Completion = nil) -> Self {
        XCTAssert(newTaskTableCell.exists, "New task is not added")
        return self
    }
    
    func deletingNewTask(completion: Completion = nil) -> Self {
        newTaskTableCell.swipeLeft()
        deleteButton.tap()
        return self
     
    }
    
    /*
     func checExistenceAfterRemoving(completion: Completion = nil) -> Self {
        XCTAssert(!newTaskTableCell.exists, "New task is not deleted")
        return self
     }
     */
    
    func checkExistenceAfterRemoving(_ newTaskName: String) -> Bool {
        let exists = app.staticTexts[newTaskName].exists
        return exists
        print(exists)
    }
}
