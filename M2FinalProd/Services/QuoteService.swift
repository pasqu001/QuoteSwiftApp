//
//  QuoteService.swift
//  M2FinalProd
//
//  Created by Kasey Pasqualini on 11/2/22.
//

import Foundation

class QuoteService {
    func getLocalData() -> [Quote]{
        //parse local Json file
        
        // Step 1 -> get a url path to the json file
        
        let pathString  = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //check if pathString is not nil otherwise return empty recipe list
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        // Step 2 -> create a url object
        //bc we check above that it is not nil we can safely unwrap it with a !
        
        let url = URL(fileURLWithPath: pathString!)
        
        // Step 3 -> create a data object
        
        do {
            let data = try Data(contentsOf: url)
            
            // Step 4 -> Decode the data with JSON decoder
            
            let decoder = JSONDecoder()
            
            do {
                
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                // Step 5 -> Add unique ID's
                
                for q in quoteData {
                    q.id = UUID()
                }
                
                
                // Step 6 -> Return the recipes
                
                return quoteData
                
            }
            catch {
                print(error)
            }

        }
        catch {
            print(error)
        }
        
        return [Quote]()
 
    }
}
