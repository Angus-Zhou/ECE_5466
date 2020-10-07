//
//  ViewController.swift
//  Lab1
//
//  Created by 周靖博 on 9/9/20.
//  Copyright © 2020 Jingbo Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    var constant = 0
    @IBOutlet weak var LEDlabel: UILabel!
    @IBOutlet weak var LED1: UIImageView!
    @IBOutlet weak var LED2: UIImageView!
    @IBOutlet weak var LED3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Actions
   
    @IBAction func count(_ sender: UIButton) {
        constant = (constant + 1) % 8
        showLED(site: constant, l1: LED1, l2: LED2, l3: LED3)
    }
    @IBAction func clear(_ sender: UIButton) {
        constant = 0
        LED1.backgroundColor = UIColor.white
        LED2.backgroundColor = UIColor.white
        LED3.backgroundColor = UIColor.white
    }
    func showLED(site: Int, l1: UIImageView!, l2: UIImageView!, l3: UIImageView!) {
        let color_1 = UIColor.blue
        let color_0 = UIColor.white
        l1.layer.cornerRadius = l1.frame.size.height/2
        l2.layer.cornerRadius = l2.frame.size.height/2
        l3.layer.cornerRadius = l3.frame.size.height/2
        switch site{
        case 1:
            l1.backgroundColor = color_0
            l2.backgroundColor = color_0
            l3.backgroundColor = color_1
        case 2:
            l1.backgroundColor = color_0
            l2.backgroundColor = color_1
            l3.backgroundColor = color_0
        case 3:
            l1.backgroundColor = color_0
            l2.backgroundColor = color_1
            l3.backgroundColor = color_1
        case 4:
            l1.backgroundColor = color_1
            l2.backgroundColor = color_0
            l3.backgroundColor = color_0
        case 5:
            l1.backgroundColor = color_1
            l2.backgroundColor = color_0
            l3.backgroundColor = color_1
        case 6:
            l1.backgroundColor = color_1
            l2.backgroundColor = color_1
            l3.backgroundColor = color_0
        case 7:
            l1.backgroundColor = color_1
            l2.backgroundColor = color_1
            l3.backgroundColor = color_1
        default:
            l1.backgroundColor = color_0
            l2.backgroundColor = color_0
            l3.backgroundColor = color_0
        }
    }
}

