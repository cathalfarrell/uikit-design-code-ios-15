//
//  ViewController.swift
//  Design+Code
//
//  Created by Cathal Farrell on 07/02/2022.
//

import UIKit

class FeaturedViewController: UIViewController {

    @IBOutlet weak var handbooksCollectionView: UICollectionView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!

    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    

    @IBOutlet weak var coursesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.layer.masksToBounds = false


        coursesTableView.delegate = self
        coursesTableView.dataSource = self
        coursesTableView.layer.masksToBounds = false
    }
}

extension FeaturedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell

        let handbook = handbooks[indexPath.item]

        cell.titleLabel.text = handbook.courseTitle
        cell.subtitleLabel.text = handbook.courseSubtitle
        cell.descriptionLabel.text = handbook.courseDescription
        cell.gradient.colors = handbook.courseGradient
        cell.logo.image = handbook.courseIcon
        cell.banner.image = handbook.courseBanner

        return cell
    }


}
extension FeaturedViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return courses.count
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 20
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesTableCell", for: indexPath) as! CoursesTableViewCell

        let course = courses[indexPath.section]

        cell.titleLabel.text = course.courseTitle
        cell.subtitleLabel.text = course.courseSubtitle
        cell.descriptionLabel.text = course.courseDescription
        cell.courseBackground.image = course.courseBackground
        cell.courseBanner.image = course.courseBanner
        cell.courseLogo.image = course.courseIcon
        return cell
    }


}
