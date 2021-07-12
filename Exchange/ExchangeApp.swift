//
//  ExchangeApp.swift
//  Exchange
//
//  Created by Beka on 12/07/21.
//

import SwiftUI

@main
struct ExchangeApp: App {
    let data = ExchangeData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(exchangeData: data)
        }
    }
}
