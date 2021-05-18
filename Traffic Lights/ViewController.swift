//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Никита Журавлев on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    enum Lights {
        case red
        case yellow
        case green
    }
    
    var state = Lights.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setLights()
        
    }

    @IBAction func actionButtonTapped(_ sender: Any) {
        
        actionButton.setTitle("NEXT", for: .normal)
        
        switch state {
        case .red:
            self.state = .yellow
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        case .yellow:
            self.state = .green
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        case .green:
            self.state = .red
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    
    }
    
    func setLights() {
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 52
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 52
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 52
    }
    

}

