//
//  ThirdViewController.swift
//  ProjetMiseNiveauIOS
//
//  Created by Gougerot Elisa on 07/09/2019.
//  Copyright © 2019 Elisa Gougerot. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var ThirdNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third page"

        // Do any additional setup after loading the view.
    }


    @IBAction func TouchThirdNextButton(_ sender: Any) {
        let next = FourthViewController()
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
