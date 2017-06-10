//
// Created by Afzal Najam on 2017-06-10.
// Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import Foundation

class DataStore {
    func allUsers() -> [User] {
        var users = [User]()
        users.append(User.init(name: "User1", photo: nil)!)
        users.append(User.init(name: "User2", photo: nil)!)
        users.append(User.init(name: "User3", photo: nil)!)

        return users
    }
}
