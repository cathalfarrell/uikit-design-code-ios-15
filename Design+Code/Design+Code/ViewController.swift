//
//  ViewController.swift
//  Design+Code
//
//  Created by Cathal Farrell on 07/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!

    override func viewDidLoad() {
        super.viewDidLoad()

        cardView.layer.cornerRadius = 30
        cardView.layer.cornerCurve = .continuous
        blurView.layer.cornerRadius = 30
        blurView.layer.cornerCurve = .continuous


        blurView.layer.masksToBounds = true

        //Shadow
        cardView.layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 20
    }
}

