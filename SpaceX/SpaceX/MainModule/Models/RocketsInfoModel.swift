// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//


import Foundation

struct RocketsInfoModel: Codable {
    let name: String
    let firstFlight: String
    let country: String
    let costPerLaunch: Int
    let firstStage: FirstStage
    let secondStage: SecondStage
    let diameter: Diameter
    
    enum CodingKeys: String, CodingKey {
        case country
        case name
        case firstFlight = "first_flight"
        case costPerLaunch = "cost_per_launch"
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case diameter
    }
}
    struct FirstStage: Codable {
        let fuelAmountTons: Double
        let burnTimeSEC: Int?
        let engines: Int
        
        enum CodingKeys: String, CodingKey {
            case fuelAmountTons = "fuel_amount_tons"
            case burnTimeSEC = "burn_time_sec"
            case engines
        }
    }
    
struct SecondStage: Codable {
    let engines: Int
    let fuelAmountTons: Double
    let burnTimeSEC: Int?

    enum CodingKeys: String, CodingKey {
        case engines
        case fuelAmountTons = "fuel_amount_tons"
        case burnTimeSEC = "burn_time_sec"
    }
}

struct Diameter: Codable {
    let meters: Double?
    let feet: Double?
}
