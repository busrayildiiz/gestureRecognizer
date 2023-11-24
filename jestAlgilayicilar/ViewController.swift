//
//  ViewController.swift
//  jestAlgilayicilar
//
//  Created by MacBook Pro on 10.11.2023.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var imageeView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var ankara = false

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        imageeView.isUserInteractionEnabled = true
        
        let gestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        imageeView.addGestureRecognizer(gestureRecogniser)
        
    }
    
    
    @objc func gorselDegistir(){
  
        if ankara == false {
            imageeView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
            
        }else {
            imageeView.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            ankara = false}
        
    }
        
       
         
    }



