//
//  CoursesViewController.swift
//  Design+Code
//
//  Created by Cathal Farrell on 11/02/2022.
//

import UIKit

class CoursesViewController: UIViewController {

    var course: Course?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("This course is: \(course?.courseTitle)")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
