//
//  SecondViewController.swift
//  Delegate
//
//  Created by LeeX on 6/22/17.
//  Copyright © 2017 LeeX. All rights reserved.
//

import UIKit

protocol FirstDelegate {
    func sendMessToFirst(mess: String)
}

class SecondViewController: UIViewController {
    
    var delegate: FirstDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ButtonDidClick(_ sender: Any) {
            delegate?.sendMessToFirst(mess: "Hello, my name is Huy")
            self.dismiss(animated: true) {
        }
    }
}   
