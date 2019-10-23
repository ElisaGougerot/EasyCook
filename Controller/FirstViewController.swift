//
//  FirstViewController.swift
//  ProjetMiseNiveauIOS
//
//  Created by Gougerot Elisa on 07/09/2019.
//  Copyright © 2019 Elisa Gougerot. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet var FirstNextButton: UIButton!
    
    @IBOutlet var RecetteTableView: UITableView!
    
    public static let recetteCellIdentifier = "NCI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First page"
        
        
        //on utilise notre propre cellule
        let cellNib = UINib(nibName: "ListeRecetteTableViewCell", bundle: nil)
        self.RecetteTableView.register(cellNib, forCellReuseIdentifier: FirstViewController.recetteCellIdentifier)
        
        
        //c'est  moi qui écoute et qui vais donner les info pour la construction de la tableView:
        self.RecetteTableView.dataSource = self //data
        self.RecetteTableView.delegate = self //user events
    }


    @IBAction func TouchFirstNextButton(_ sender: Any) {
        
        let next = SecondViewController()
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    //Créer le nombre de ligne que l'on souhaite
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //notre traitement
        return 100
    }
    
    //on utilise notre propre cellule
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellule = tableView.dequeueReusableCell(withIdentifier: FirstViewController.recetteCellIdentifier, for : indexPath) as! ListeRecetteTableViewCell
        cellule.TitleRecette.text = "test"
        //cellule.ImageRecette.image = UIImage(named: "imageSwift1.jpg")
        return cellule
    }
    
    
     /*A utiliser pour avoir une cellule classique (pas la sienne)
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
     //on enleve de la file la cellule qui a cette identifiant (on recycle nos cellules pour eviter d'en créer a chaque fois)
     let cell = tableView.dequeueReusableCell(withIdentifier: FirstViewController.recetteCellIdentifier) ?? UITableViewCell(style: .default, reuseIdentifier: FirstViewController.recetteCellIdentifier)
     cell.textLabel?.text = "test"
     return cell
     }
    */

}
