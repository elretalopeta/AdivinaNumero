//
//  ViewController.swift
//  AdivinaNumero
//
//  Created by usu27 on 29/9/15.
//  Copyright © 2015 usu27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var randomLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    var randomNum: Int! //Indicar que esta variable tendra valor pero que lo tendra mas adelante
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        random()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jugar(sender: AnyObject) {
        let puntuacion: Int = abs(Int(slider.value) - randomNum)
        var diferencia: Int
        
        if(puntuacion > 20){
            diferencia = Int (scoreLabel.text!)!-1
            scoreLabel.text = String (diferencia) //si el label tiene texto lo cojes
        }else{
            diferencia = Int (scoreLabel.text!)!+1
            scoreLabel.text = String (diferencia)
            }
        random()
        
        let alert = UIAlertController(title: "Titulo Alert", message: "Hola Mundo", preferredStyle: .Alert) //creo el alert
        
        let action = UIAlertAction(title: "OK", style: .Default , handler: nil) //creo un boton para cerrar el alert
        alert.addAction(action) //añado el boton en el alert
        
        presentViewController(alert, animated: true, completion: nil) // muestro el alert creado   
    }

    func random(){
        randomNum = Int(arc4random_uniform(100))+1
        randomLabel.text = String(randomNum)
    }
    
}

