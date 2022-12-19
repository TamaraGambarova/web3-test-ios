//
//  web_3_playgroundTests.swift
//  web-3-playgroundTests
//
//  Created by Tamara Gambarova on 13.12.2022.
//

import XCTest
import web3

@testable import web_3_playground

class web_3_playgroundTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        if #available(iOS 15, *) {
            guard let clientUrl = URL(string: "https://an-infura-or-similar-url.com/123") else {
                return
            }
            let client = EthereumWebSocketClient(url: clientUrl)

            client.eth_gasPrice { (currentPrice) in
                print("The current gas price is \(currentPrice)")
            }
        } else {
            guard let clientUrl = URL(string: "https://an-infura-or-similar-url.com/123") else {
                return
            }
            let client = EthereumWebSocketClient(url: clientUrl)

            client.eth_gasPrice { (currentPrice) in
                print("The current gas price is \(currentPrice)")
            }
        }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
