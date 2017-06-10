//
// Created by Afzal Najam on 2017-06-10.
// Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit

class UserListDataSource: NSObject, UITableViewDataSource {

    let dataStore = DataStore()

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataStore.allUsers().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = dataStore.allUsers()[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell else {
            fatalError("The dequeued cell is not an instance of UserTableViewCell.")
        }

        cell.nameLabel?.text = user.name
        return cell
    }
}
