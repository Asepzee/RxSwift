//
//  DetailViewController.swift
//  RxSwiftExample
//
//  Created by AsepZee on 29/01/20.
//  Copyright © 2020 AsepZee. All rights reserved.
//

import UIKit

protocol CharacterDelegate {
    func didSelectCharacter(_ name: String)
}
class DetailViewController: UIViewController {
    
    var delegate: CharacterDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func characterSelected(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else { return }
        
        if let delegateObject = delegate {
            delegateObject.didSelectCharacter(characterName)
        }
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
