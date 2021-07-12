//
//  ContentView.swift
//  Exchange
//
//  Created by Beka on 12/07/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var exchangeData: ExchangeData
    
    var body: some View {
        TabView {
            ForEach(exchangeData.rates, id: \.currencyCode) { item in
                CardView(item: item)
            }
        }
        .onAppear { exchangeData.getRates() }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
