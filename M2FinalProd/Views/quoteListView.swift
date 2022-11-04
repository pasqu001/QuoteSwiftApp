//
//  QuoteListView.swift
//  M2FinalProd
//
//  Created by Kasey Pasqualini on 11/2/22.
//

import SwiftUI

struct QuoteListView: View {
    
    //reference the view model
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        NavigationView {
            List(model.quotes) { q in

                NavigationLink(
                    destination: QuoteDetailView(quote:q),
                    label: {
                        ZStack {
                            Image(q.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                .opacity(0.85)
                            VStack{
                                Text(q.quote)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Text(" - " + q.author)
                                    .fontWeight(.semibold)
                            }
                        }.padding(.bottom, 12.0)
                    })
            }
        }.navigationBarTitle("All Quotes")
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
