//
//  ViewControllerTests.swift
//  TesteUnitarioDIOTests
//
//  Created by user220237 on 8/2/22.
//

import XCTest
@testable import TesteUnitarioDIO

class ViewControllerTests: XCTestCase {

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


    func testGenerateEvenNumber() {
        let viewController = ViewController()
        viewController.generateEvenNumber()
        
        guard let evenNumber = viewController.evenNumbers.first else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(evenNumber % 2 == 0)
    }

    func testPerformanceExample() throws {
        self.measure {
            let viewController = ViewController()
            viewController.generateEvenNumber()
        }
    }

}
