//
//  HomeViewController.swift
//  ProjetMiseNiveauIOS
//
//  Created by Gougerot Elisa on 07/09/2019.
//  Copyright © 2019 Elisa Gougerot. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var HomeNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TouchHomeNextButton(_ sender: Any) {
        
        let next = FirstViewController()
        self.navigationController?.pushViewController(next, animated: true)
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
