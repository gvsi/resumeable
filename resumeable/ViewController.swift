//
//  ViewController.swift
//  resumeable
//
//  Created by Giovanni Alcantara on 24/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    lazy var profile = Profile(name: "Wei Tat", email: "weitat96@live.com", phoneNumber: "17823642", location: "Edinburgh", link: "linkedin.com")
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var educationTableView: UITableView!
    @IBOutlet weak var educationTableViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        educationTableView.delegate = self
        educationTableView.dataSource = self
        
        nameLabel.text = profile.name
        emailLabel.text = "Email \(profile.email)"
        phoneNumberLabel.text = "Phone number: \(profile.phoneNumber)"
        locationLabel.text = "Location: \(profile.location)"
        linkLabel.text = "Link: \(profile.link)"
        
        let edItem = EducationItem(schoolName: "The University of Edinburgh", schoolLocation: "Edinburgh, Scotland", degree: "BEng", major: "Electronics and Software Engineering", GPA: 4.0, startDate: "Sep 2014", endDate: "May 2018")
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem)
        educationTableViewHeightConstraint.constant = CGFloat(70 * profile.educationItems.count)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profile.educationItems.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = educationTableView.dequeueReusableCell(withIdentifier: "educationItemCell") as! EducationItemTableViewCell
        let item = profile.educationItems[indexPath.row]
        cell.schoolNameLabel.text = item.schoolName
        cell.degreeLabel.text = "\(item.degree), \(item.major)"
        cell.datesLabel.text = "\(item.startDate) - \(item.endDate)"
        return cell
    }
}
