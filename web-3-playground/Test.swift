//
//  Test.swift
//  web-3-playground
//
//

import Foundation
import web3

// This is just an example. EthereumKeyLocalStorage should not be used in production code
let keyStorage = EthereumKeyLocalStorage()
let account = try? EthereumAccount.create(replacing: keyStorage, keystorePassword: "MY_PASSWORD")

func main() {
    guard let clientUrl = URL(string: "https://an-infura-or-similar-url.com/123") else {
        return
    }
    let client = EthereumWebSocketClient(url: clientUrl)

    client.eth_gasPrice { (currentPrice) in
        print("The current gas price is \(currentPrice)")
    }
}

