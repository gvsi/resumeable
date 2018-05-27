//
//  EditEducationItemViewController.swift
//  resumeable
//
//  Created by Wei Tat Lee on 26/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import UIKit

class EditEducationItemViewController: UIViewController {
    var educationItem : EducationItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(educationItem!.schoolName)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
