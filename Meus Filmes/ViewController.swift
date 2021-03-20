//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Caio Fernandes on 20/03/21.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populate()
    }
    
    func populate(){
        var filme: Filme
        
        filme = Filme(title: "007 - Spectre", description: "Descrição 1")
        filmes.append(filme)
        
        filme = Filme(title: "Star Wars", description: "Descrição 2", image: "filme2")
        filmes.append(filme)
        
        filme = Filme(title: "Impacto Mortal", description: "Descrição 3")
        filmes.append(filme)
        
        filme = Filme(title: "Deadpool", description: "Descrição 4")
        filmes.append(filme)
        
        filme = Filme(title: "O Regresso", description: "Descrição 5", image: "filme5")
        filmes.append(filme)
        
        filme = Filme(title: "A herdeira", description: "Descrição 6")
        filmes.append(filme)
        
        filme = Filme(title: "Caçadores de emoção", description: "Descrição 7")
        filmes.append(filme)
        
        filme = Filme(title: "Regresso do mal", description: "Descrição 8")
        filmes.append(filme)
        
        filme = Filme(title: "Tarzan", description: "Descrição 9")
        filmes.append(filme)
        
        filme = Filme(title: "Hardcore", description: "Descrição 10", image: "filme10")
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row]
        let standardImage = UIImage(systemName: "xmark")
        let reuseCell = "reuseCellFilm"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath) as! CellFilm
        
        cell.titleFilmLabel.text = filme.title
        cell.descriptionFilmLabel.text = filme.description
        if filme.image != nil {
            cell.imageFilmView.image = filme.image
            cell.imageFilmView.layer.cornerRadius = cell.imageFilmView.frame.height/2
            cell.imageFilmView.clipsToBounds = true
        } else {
            cell.imageFilmView.image = standardImage
        }
        
        
        return cell
    }

}

