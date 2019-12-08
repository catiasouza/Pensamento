//
//  SeetingsViewController.swift
//  Pensamentos
//
//  Created by Cátia Souza on 01/12/19.
//  Copyright © 2019 Cátia Souza. All rights reserved.
//

import UIKit

class SeetingsViewController: UIViewController {
    
    
    @IBOutlet weak var swautoRefresh: UISwitch!
    @IBOutlet weak var slTimerInterval: UISlider!
    @IBOutlet weak var sgColorShema: UISegmentedControl!
    
    @IBOutlet weak var lbTimerInterval: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func changeAutoRefresh(_ sender: UISwitch) {
    }
    

    @IBAction func changeTimerInterval(_ sender: UISlider) {
    }
    
    @IBAction func changeColorShema(_ sender: UISegmentedControl) {
    }
}
