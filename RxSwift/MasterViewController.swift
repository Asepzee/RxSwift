//
//  ViewController.swift
//  RxSwift
//
//  Created by AsepZee on 29/01/20.
//  Copyright © 2020 AsepZee. All rights reserved.
//

import UIKit
import RxSwift

class MasterViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectCharacter(_ sender: UIBarButtonItem) {
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        //        detailVC.delegate = self
                detailVC.selectedCharacter
                    .subscribe (onNext: { [weak self] character in
                        self?.titleLabel.text = "\(character)"
                    }).disposed(by: disposeBag)
                navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

