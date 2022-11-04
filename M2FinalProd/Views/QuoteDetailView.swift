//
//  QuoteDetailView.swift
//  M2FinalProd
//
//  Created by Kasey Pasqualini on 11/2/22.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quote:Quote
    
    var body: some View {
        
        
        VStack{
            
            Text(quote.author)
            Text(quote.quote)
            
        }.navigationBarTitle(quote.author)
        
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.quotes[0])
    }
}
