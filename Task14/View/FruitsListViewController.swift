//
//  CheckListViewController.swift
//  Task14
//
//  Created by 松島悠人 on 2021/09/19.
//

import UIKit

final class FruitsListViewController: UIViewController {

    @IBOutlet private weak var checkListTableView: UITableView! {
        didSet {
            checkListTableView.delegate = self
            checkListTableView.dataSource = self
            checkListTableView.register(FruitsListTableViewCell.nib(), forCellReuseIdentifier: FruitsListTableViewCell.identifier)
        }
    }
}

extension FruitsListViewController: UITableViewDelegate {
}

extension FruitsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = checkListTableView.dequeueReusableCell(withIdentifier: FruitsListTableViewCell.identifier, for: indexPath)
        return cell
    }
}