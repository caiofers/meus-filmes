//
//  Filme.swift
//  Meus Filmes
//
//  Created by Caio Fernandes on 20/03/21.
//

import UIKit

class Film {
    
    var title: String!
    var description: String!
    var image: UIImage?
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
        self.image = UIImage(systemName: "xmark")
    }
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        
        if let image = UIImage(named: image){
            self.image = image
        } else {
            self.image = UIImage(systemName: "xmark")
        }
    }
    
}
