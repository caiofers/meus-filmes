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
        
        filme = Filme(title: "Filme 1", description: "Descrição 1")
        filmes.append(filme)
        
        filme = Filme(title: "Filme 2", description: "Descrição 2")
        filmes.append(filme)
        
        filme = Filme(title: "Filme 3", description: "Descrição 3")
        filmes.append(filme)
        
        filme = Filme(title: "Filme 4", description: "Descrição 4")
        filmes.append(filme)
        
        filme = Filme(title: "Filme 5", description: "Descrição 5")
        filmes.append(filme)
        
        filme = Filme(title: "Filme 6", description: "Descrição 6")
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
        
        let reuseCell = "reuseCellFilm"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath)
        
        cell.textLabel?.text = filme.title
        
        return cell
        
        
        
    }

}

