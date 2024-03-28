//
//  DeveloperPreview.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 28/03/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownId: NSUUID().uuidString,
            ownName: "Farel Smith",
            ownImageUrl: "listing-1",
            numOfBedrooms: 4,
            numOfBathrooms: 3,
            numOfGuests: 4,
            pricePerNight: 150,
            latitude: 70.223,
            longitude: -23.111,
            address: "BSD",
            imageUrls: ["listing-2", "listing-3","listing-4","listing-5"],
            city: "Tangerang",
            state: "BSD",
            title: "Apartement BSD",
            rating: 4.86,
            features: [.selfCheckIn],
            amienities: [.wifi, .pool, .laundry, .tv, .office],
            type: [.apartment])
    ]
}
