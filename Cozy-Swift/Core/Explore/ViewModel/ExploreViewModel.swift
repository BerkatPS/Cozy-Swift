//
//  ExploreViewModel.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 28/03/24.
//

import Foundation

// this is for data model injection

class ExploreViewModel: ObservableObject{
    
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListing()
        }catch{
            print("DEBUG: failed to fetch listings with error: \(error.localizedDescription)")
            
        }
    }
 
}
