//
//  ViewController.swift
//  RxSwift
//
//  Created by AsepZee on 29/01/20.
//  Copyright © 2020 AsepZee. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectCharacter(_ sender: UIBarButtonItem) {
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detailVC.delegate = self
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

extension MasterViewController: CharacterDelegate{
    func didSelectCharacter(_ name: String) {
        titleLabel.text = name
    }
    
    
}

