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
    
    @IBOutlet weak var editProfileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfileTableView.delegate = self
        editProfileTableView.dataSource = self
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
    }}
