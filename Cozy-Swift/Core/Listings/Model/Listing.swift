//
//  Listing.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 28/03/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable{
    let id: String
    let ownId: String
    let ownName: String
    let ownImageUrl: String
    let numOfBedrooms: Int
    let numOfBathrooms: Int
    let numOfGuests: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address:   String
    var imageUrls: [String]
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amienities: [ListingAmenities]
    let type: [ListingType]
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable{
    case selfCheckIn
    
    var imageName: String{
        switch self {
        case .selfCheckIn:
            return "door.left.hand.open"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn:
            return "Self Check In"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfCheckIn:
            return "Check yourself in with the keypad"
        }
    }
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case office
    
    
    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "Tv"
        case .office:
            return "Office"
        }
    }
    
    
    var imageName: String{
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .laundry:
            return "washer"
        case .tv:
            return "tv"
        case .office:
            return "pencil.and.ruler.fill"
        }
    }
    
    var id: Int{ return self.rawValue }
    
}


enum ListingType: Int, Codable, Hashable {
    
    case apartment
    case house
    case villa
    
    var description: String {
        switch self {
        case .apartment:
            return "Apartment"
        case .house:
            return "House"
        case .villa:
            return "Villa"
        }
    }
}
