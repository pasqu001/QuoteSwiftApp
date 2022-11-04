//
//  Quote.swift
//  M2FinalProd
//
//  Created by Kasey Pasqualini on 11/2/22.
//

import Foundation

class Quote:Identifiable, Decodable {
    
    var id:UUID?
    var quote:String
    var author:String
    var image:String
    
}
