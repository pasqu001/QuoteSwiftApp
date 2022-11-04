//
//  QuoteModel.swift
//  M2FinalProd
//
//  Created by Kasey Pasqualini on 11/2/22.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        //create an instance of quoteService and get the data
        let service = QuoteService()
        
        self.quotes = service.getLocalData()
    }
    
}
