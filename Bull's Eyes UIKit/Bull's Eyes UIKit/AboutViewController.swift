//
//  AboutViewController.swift
//  Bull's Eyes UIKit
//
//  Created by GUILLO Tristan on 26/02/2020.
//  Copyright © 2020 GUILLO Tristan. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var titleInfoLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close() {
         dismiss(animated: true, completion: nil)
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
