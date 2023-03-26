// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pizza = try? JSONDecoder().decode(Pizza.self, from: jsonData)

import Foundation

// MARK: - PizzaElement
struct PizzaElement: Codable {
    let id, name: String?
    let imageURL: String?
    let rating: Int?
    let priceP, priceM, priceG: Double?

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
        case rating, priceP, priceM, priceG
    }
}

typealias Pizza = [PizzaElement]
