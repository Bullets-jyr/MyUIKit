//
//  MyViewController.swift
//  MyUIKit
//
//  Created by xinapse on 11/30/23.
//

import UIKit

protocol AdminDelegate {
    func doTask()
}

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        Admin(delegate: self)
    }
    
    @IBAction func didTabButton(_ sender: Any) {
//        helloLabel.text = "Hello Bullets!"
        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)!"
        }
        admin?.delegate.doTask()
    }
}

extension MyViewController: AdminDelegate {
    func doTask() {
        print("저 지금 일 잘하고 있습니다!")
    }
}

// 위임을 하는 사람
struct Admin {
    var delegate: AdminDelegate
}
