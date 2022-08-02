//
//  ViewControllerUITests.swift
//  TesteUnitarioDIOUITests
//
//  Created by user220237 on 8/2/22.
//

import XCTest

class ViewControllerUITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }


    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testGenerateNumberButtonTapped() {
        
        let app = XCUIApplication()
        
        let staticText = app.staticTexts[""]
        
        let generateNumberButton = app/*@START_MENU_TOKEN@*/.staticTexts["Gerar Número"]/*[[".buttons[\"Gerar Número\"].staticTexts[\"Gerar Número\"]",".staticTexts[\"Gerar Número\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        generateNumberButton.tap()
    
        if generateNumberButton.isSelected {
            XCTAssertTrue(staticText.exists)
        }
    }
    
}
