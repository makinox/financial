//
//  OnBoardingViewController.swift
//  PlatziFinanzas
//
//  Created by Jesus Bossa on 5/04/20.
//  Copyright © 2020 Jesus Bossa. All rights reserved.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBoarding",
            let destination = segue.destination as? OnBoardingViewController else {
            return
        }
        destination.pageControl = pageControl
    }

}
