//
//  Response.swift
//  CertificatePinning
//
//  Created by Chia Wei Zheng Terry on 17/5/24.
//

import Foundation

// MARK: - Response
struct Response: Codable {
    let total, start, included: String
    let results: Results
    let lastUpdatedDateAndTime, effectiveDateAndTime: String
}

// MARK: - Results
struct Results: Codable {
    let assets: [Asset]
}

// MARK: - Asset
struct Asset: Codable {
    let recData: [RecDatum]
}

// MARK: - RecDatum
struct RecDatum: Codable {
    let currency, ttSell, ttBuy, quoteCurrency: String
    let ttInverseSell, ttInverseBuy, baseCurrencyUnit, quoteCurrencyUnit: String
}
