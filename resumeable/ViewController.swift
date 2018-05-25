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
    
    @IBOutlet weak var experienceTableView: UITableView!
    @IBOutlet weak var experienceTableViewHeightConstraint: NSLayoutConstraint!
    

    
    override func viewDidLoad() {
        educationTableView.delegate = self
        educationTableView.dataSource = self
        experienceTableView.delegate = self
        experienceTableView.dataSource = self
        
        nameLabel.text = profile.name
        emailLabel.text = "Email \(profile.email)"
        phoneNumberLabel.text = "Phone number: \(profile.phoneNumber)"
        locationLabel.text = "Location: \(profile.location)"
        linkLabel.text = "Link: \(profile.link)"
        
        let edItem = EducationItem(schoolName: "The University of Edinburgh", schoolLocation: "Edinburgh, Scotland", degree: "BEng", major: "Electronics and Software Engineering", GPA: 4.0, startDate: "Sep 2014", endDate: "May 2018")
        let edItem2 = EducationItem(schoolName: "The University of Texas at Austin", schoolLocation: "Austin, TX", degree: "BEng", major: "Electrical and Computer Engineering", GPA: 3.5, startDate: "Aug 2016", endDate: "May 2017")
        profile.addEducationItem(item: edItem)
        profile.addEducationItem(item: edItem2)
        educationTableViewHeightConstraint.constant = CGFloat(70 * profile.educationItems.count)
        
        
        let expItem = ExperienceItem(jobTitle: "Software Engineer", companyName: "Google", startDate: "May 2017", endDate: "May 2018", jobLocation: "MountainView, CA")
        let expItem2 = ExperienceItem(jobTitle: "Hardware Engineer", companyName: "Intel", startDate: "May 2016", endDate: "May 2017", jobLocation: "Penang, Malaysia")
        profile.addExperienceItem(item: expItem)
        profile.addExperienceItem(item: expItem2)
        experienceTableViewHeightConstraint.constant = CGFloat(70 * profile.experienceItems.count)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == self.educationTableView){
            return profile.educationItems.count
        } else if(tableView == self.experienceTableView){
            return profile.experienceItems.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //Education Table View
            if(tableView == self.educationTableView){
                let cell = educationTableView.dequeueReusableCell(withIdentifier: "educationItemCell") as! EducationItemTableViewCell
                let item = profile.educationItems[indexPath.row]
                cell.schoolNameLabel.text = item.schoolName
                cell.degreeLabel.text = "\(item.degree), \(item.major)"
                cell.datesLabel.text = "\(item.startDate) - \(item.endDate)"
                return cell
                
            //Experience Table View
            }else if(tableView == self.experienceTableView){
                let cell = experienceTableView.dequeueReusableCell(withIdentifier: "experienceItemCell") as! ExperienceItemTableViewCell
                let item = profile.experienceItems[indexPath.row]
                cell.jobTitleLabel.text = item.jobTitle
                cell.startEndDateLabel.text = "\(item.startDate) - \(item.endDate) "
                
                // Company Name with gray Location
                let attrs1 = [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 12)]
                let attributedString1 = NSMutableAttributedString(string:"\(item.companyName) -", attributes:attrs1)
                let attrs2 = [NSAttributedStringKey.font :
                    UIFont.boldSystemFont(ofSize: 12),
                              NSAttributedStringKey.foregroundColor: UIColor.lightGray]
                let attributedString2 = NSMutableAttributedString(string:" \(item.jobLocation)",attributes:attrs2)
                attributedString1.append(attributedString2)
                cell.companyNameLabel.attributedText = attributedString1
                
                return cell
            }
        
        return UITableViewCell() // Return Dummy Cell if table view not found
    }
}
