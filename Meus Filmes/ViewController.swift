//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Caio Fernandes on 20/03/21.
//

import UIKit

class ViewController: UITableViewController {

    var films: [Film] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populate()
    }
    
    func populate(){
        var film: Film
        
        film = Film(title: "007 - Spectre", description: "Descrição 1")
        films.append(film)
        
        film = Film(title: "Star Wars", description: "Descrição 2", image: "filme2")
        films.append(film)
        
        film = Film(title: "Impacto Mortal", description: "Descrição 3")
        films.append(film)
        
        film = Film(title: "Deadpool", description: "Descrição 4")
        films.append(film)
        
        film = Film(title: "O Regresso", description: "Descrição 5", image: "filme5")
        films.append(film)
        
        film = Film(title: "A herdeira", description: "Descrição 6")
        films.append(film)
        
        film = Film(title: "Caçadores de emoção", description: "Descrição 7")
        films.append(film)
        
        film = Film(title: "Regresso do mal", description: "Descrição 8")
        films.append(film)
        
        film = Film(title: "Tarzan", description: "Descrição 9")
        films.append(film)
        
        film = Film(title: "Hardcore", description: "Descrição 10", image: "filme10")
        films.append(film)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = films[indexPath.row]
        let reuseCell = "reuseCellFilm"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath) as! CellFilm
        
        cell.titleFilmLabel.text = filme.title
        cell.descriptionFilmLabel.text = filme.description
        cell.imageFilmView.image = filme.image
        cell.imageFilmView.layer.cornerRadius = cell.imageFilmView.frame.height/2
        cell.imageFilmView.clipsToBounds = true

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsFilmSegue"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let selectFilm = films[indexPath.row]
                let viewDestiny = segue.destination as! DetailsViewController
                viewDestiny.film = selectFilm
            }
        }
    }
    
}

