//
//  Model.swift
//  Exchange Test
//
//  Created by Beka on 12/07/21.
//

import Foundation

struct API: Codable {
    
    let data: [Currency]
    let errorMessage, status: String
    let timestamp: Int
    
    enum CodingKeys: String, CodingKey {
        case data
        case errorMessage = "error_message"
        case status, timestamp
    }
}

struct Currency: Codable {
    let buyCourse, sellCourse, cbCourse: Int
    let currency, currencyCode: String
    let scale: Int
}
