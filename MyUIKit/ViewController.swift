//
//  ViewController.swift
//  MyUIKit
//
//  Created by xinapse on 11/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
//        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
//        print("Hello jiyoung!!!")
        myLabel.text = "Hello UIKit"
    }
}

