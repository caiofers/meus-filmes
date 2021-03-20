//
//  DetailsViewController.swift
//  Meus Filmes
//
//  Created by Caio Fernandes on 20/03/21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var navigationDetailsView: UINavigationItem!
    @IBOutlet weak var filmDescriptionLabel: UILabel!
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmTitleLabel.text = film.title
        filmDescriptionLabel.text = film.description
        filmImageView.image = film.image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
