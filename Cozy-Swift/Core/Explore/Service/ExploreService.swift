//
//  ExploreService.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 28/03/24.
//

import Foundation


class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
