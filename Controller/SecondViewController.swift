//
//  SecondViewController.swift
//  ProjetMiseNiveauIOS
//
//  Created by Gougerot Elisa on 07/09/2019.
//  Copyright © 2019 Elisa Gougerot. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var SecondNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second page"

        // Do any additional setup after loading the view.
    }


    @IBAction func TouchSecondNextButton(_ sender: Any) {
        let next = ThirdViewController()
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
