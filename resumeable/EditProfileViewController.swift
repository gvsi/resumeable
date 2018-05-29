//
//  EditProfileViewController.swift
//  resumeable
//
//  Created by Giovanni Alcantara on 25/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var profile : Profile?
    var profileViewController : ProfileViewController?
    @IBOutlet weak var editProfileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfileTableView.delegate = self
        editProfileTableView.dataSource = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveProfile))
    }
    
    @IBAction func saveProfile(_ sender: UIBarButtonItem) {
        if let parent = profileViewController {
            parent.profile.name = (editProfileTableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! EditProfileItemTableViewCell).rowTextField.text!
            parent.profile.phoneNumber = (editProfileTableView.cellForRow(at: IndexPath(row: 1, section: 0)) as! EditProfileItemTableViewCell).rowTextField.text!
            parent.profile.location = (editProfileTableView.cellForRow(at: IndexPath(row: 2, section: 0)) as! EditProfileItemTableViewCell).rowTextField.text!
            parent.profile.link = (editProfileTableView.cellForRow(at: IndexPath(row: 3, section: 0)) as! EditProfileItemTableViewCell).rowTextField.text!
            
            parent.reloadProfile()
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = editProfileTableView.dequeueReusableCell(withIdentifier: "editProfileItemCell") as! EditProfileItemTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.rowLabel.text = "Name"
            cell.rowTextField.text = profile?.name ?? ""
            cell.rowTextField.placeholder = "John Smith"
        case 1:
            cell.rowLabel.text = "Phone number"
            cell.rowTextField.text = profile?.phoneNumber ?? ""
            cell.rowTextField.placeholder = "(123)456-7890"
        case 2:
            cell.rowLabel.text = "Location"
            cell.rowTextField.text = profile?.location ?? ""
            cell.rowTextField.placeholder = "San Francisco, CA"
        case 3:
            cell.rowLabel.text = "Website"
            cell.rowTextField.text = profile?.link ?? ""
            cell.rowTextField.placeholder = "www.johnsmith.com"
        default:
            print("Error: tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)")
        }

        return cell
    }
}
