//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by Jesus Bossa on 10/04/20.
//  Copyright © 2020 Jesus Bossa. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        customButtom()
    }
    
    func customButtom() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))

        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBar.frame.origin.y + 8
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "PlusButton"), for: .normal)

        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 8
        view.addSubview(menuButton)

        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    }

    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }

}
