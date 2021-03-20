//
//  Filme.swift
//  Meus Filmes
//
//  Created by Caio Fernandes on 20/03/21.
//

import UIKit

class Filme {
    var title: String!
    var description: String!
    var image: UIImage?
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = UIImage(named: image)
    }
}
