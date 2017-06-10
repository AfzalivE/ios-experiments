//
// Created by Afzal Najam on 2017-06-10.
// Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit

class DataStore {

    static let sharedInstance = DataStore()

    func allUsers() -> [User] {
        var users = [User]()
        users.append(User.init(name: "User1", photo: UIImage(named: "meal1"))!)
        users.append(User.init(name: "User2", photo: UIImage(named: "meal2"))!)
        users.append(User.init(name: "User3", photo: UIImage(named: "meal3"))!)

        return users
    }
}
