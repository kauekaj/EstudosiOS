//
//  TesteUnitarioDIOTests.swift
//  TesteUnitarioDIOTests
//
//  Created by user220237 on 8/1/22.
//

import XCTest
@testable import TesteUnitarioDIO

class TesteUnitarioDIOTests: XCTestCase {

    func testGenerateRandomNumber() {
        let viewController = ViewController()
        viewController.generateEvenNumber()
        let randomNumber = viewController.generateRandomNumber()
                
        XCTAssertNotNil(randomNumber)
        XCTAssertNotEqual(randomNumber, "", "O retorno não pode ser vazio")
    }
    
    func testGenerateRandomNumberFailure() {
        let viewController = ViewController()
        //viewController.generateEvenNumber()
        let randomNumber = viewController.generateRandomNumber()
        
        XCTAssertEqual(randomNumber, "", "O retorno deve ser vazio")
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
