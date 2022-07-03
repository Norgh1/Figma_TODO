//
//  ViewController.swift
//  Figma_TODO
//
//  Created by Nor Gh on 7/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            if let regVC = segue.destination as? Register_VC {
                regVC.`self`()
            }
        }
    }
}

