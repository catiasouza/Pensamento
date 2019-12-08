//
//  Quote.swift
//  Pensamentos
//
//  Created by Cátia Souza on 01/12/19.
//  Copyright © 2019 Cátia Souza. All rights reserved.
//

import Foundation

// CODABLE = Transforma a classe em objeto json ou vice versa
struct Quote: Codable {
  
    
    // Os let tem que ser exato como no json
    let quote: String
    let author: String
    let image: String
    
    var quoteFormated: String{
        return " ‟" + quote +  "” "
 
    }
    var authorFormated: String{
        return " -" + author + "- "
    }
    

}
