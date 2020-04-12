//
//  TransactionsViewController.swift
//  PlatziFinanzas
//
//  Created by Jesus Bossa on 8/04/20.
//  Copyright © 2020 Jesus Bossa. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first as? UIView else {
            return UIView()
        }
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Transactions"
//        tableView.delegate = self
//        tableView.dataSource = self

    }
    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        navigationController?.navigationBar.barStyle = .black
//    }
}

extension TransactionsViewController: UITableViewDelegate {
    
}

extension TransactionsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 0
//        tableView.backgroundView = (count == 0) ? emptyStateView : nil
        if (count == 0) {
            tableView.backgroundView = emptyStateView
            tableView.separatorStyle = .none
        } else {
            tableView.backgroundView = nil
            tableView.separatorStyle = .singleLine
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}
