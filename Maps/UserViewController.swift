//
// Created by Afzal Najam on 2017-06-10.
// Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!

    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = user {
            navigationItem.title = user.name
            photoImageView.image = user.photo
        }
        
    }
}
