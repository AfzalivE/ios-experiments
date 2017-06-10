//
//  UserTableViewCell.swift
//  Maps
//
//  Created by Afzal Najam on 2017-06-10.
//  Copyright © 2017 Afzal Najam. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setUser(_ user: User) {
        nameLabel?.text = user.name
        photoImageView?.image = user.photo
    }

}
