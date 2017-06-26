//
//  FirstViewController.swift
//  Delegate
//
//  Created by LeeX on 6/22/17.
//  Copyright © 2017 LeeX. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FirstDelegate {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func sendMessToFirst(mess: String) {
        label.text = mess
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? SecondViewController
        vc?.delegate = self
    }

    @IBAction func BtnDidClick(_ sender: Any) {
        performSegue(withIdentifier: "moveToSecondVC", sender: self)
    }

}
