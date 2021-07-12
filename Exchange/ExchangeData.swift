//
//  ExchangeData.swift
//  Exchange Test
//
//  Created by Beka on 12/07/21.
//

import Foundation

class ExchangeData: ObservableObject {
    @Published var rates: [Currency] = []
    
    func getRates() {
        guard let url = URL(string: "https://dbo.infinbank.com:9443/api/v1/nci/NCIRate") else { fatalError("Missing URL") }

            let urlRequest = URLRequest(url: url)

            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                if let error = error {
                    print("Request error: ", error)
                    return
                }

                guard let response = response as? HTTPURLResponse else { return }

                if response.statusCode == 200 {
                    guard let data = data else { return }
                    
                    DispatchQueue.main.async {
                        do {
                            let decodedData = try JSONDecoder().decode(API.self, from: data)
                            self.rates = decodedData.data
                        } catch let error {
                            print("Error decoding: ", error)
                        }
                    }
                }
            }
            dataTask.resume()
    }
}
