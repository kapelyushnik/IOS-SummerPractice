//
//  ViewController.swift
//  HW2App
//
//  Created by Артем Капелюшник on 01.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func confirmDidTap(_ sender: Any) {
        guard let phoneNumber = textField.text else { return }
        
        if phoneNumber.starts(with: "89087") {
            guard let contactListVC = storyboard?.instantiateViewController(withIdentifier: "ContactsTableViewController") else { return }
            navigationController?.pushViewController(contactListVC, animated: true)
        } else {
            guard let wrongNumberVC = storyboard?.instantiateViewController(withIdentifier: "WrongNumberViewController") else { return }
            present(wrongNumberVC, animated: true)
        }
    
    }
}

