//
//  ViewController2.swift
//  AdivinaNumero
//
//  Created by usu27 on 30/9/15.
//  Copyright © 2015 usu27. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cerrarVista(sender: AnyObject) {
        
    dismissViewControllerAnimated(true, completion: nil)
    }

    
}
