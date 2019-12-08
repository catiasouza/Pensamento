//
//  QuoteManager.swift
//  Pensamentos
//
//  Created by Cátia Souza on 01/12/19.
//  Copyright © 2019 Cátia Souza. All rights reserved.
//

import Foundation


class QuoteManager {
    
    let quotes: [Quote]
    
    init() {
        // Poderia ser url da net... ai nao usaria bundle
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension:
        "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        
        quotes = try! JSONDecoder().decode([Quote].self, from: jsonData)
        print(quotes)
    }
    
    func getRandomQuote() -> Quote{
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
}
