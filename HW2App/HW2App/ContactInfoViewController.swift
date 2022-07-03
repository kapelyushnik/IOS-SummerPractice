//
//  ContactInfoViewController.swift
//  HW2App
//
//  Created by Артем Капелюшник on 02.07.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var contactName: ContactInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let contactName = contactName else { return }
        
        let contact = contactName.contactName.description
        let phone = contactName.phoneNumber.description
        
        nameLabel.text = contact
        phoneNumberLabel.text = phone
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
}
