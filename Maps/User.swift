//
// Created by Afzal Najam on 2017-06-10.
// Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit

public class User {

    var name: String
    var photo: UIImage?

    init?(name: String, photo: UIImage?) {
        // Initialization should fail if there is no name or if the rating is negative.
        guard (!name.isEmpty) else {
            return nil
        }

        self.name = name
        self.photo = photo
    }

}
