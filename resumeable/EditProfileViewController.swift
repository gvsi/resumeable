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
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell() // Return Dummy Cell if table view not found
    }}
