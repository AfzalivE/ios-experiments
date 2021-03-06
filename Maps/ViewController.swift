//
//  ViewController.swift
//  Maps
//
//  Created by Afzal Najam on 2017-06-04.
//  Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController, GMSMapViewDelegate {
    @IBOutlet weak var mapContainerView: GMSMapView!
    @IBOutlet weak var userListView: UITableView!

    let dataSource = UserListDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadMap()
        loadUsers()
    }

    private func loadMap() {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)

        mapContainerView.frame = .zero
        mapContainerView.camera = camera
        mapContainerView.settings.myLocationButton = true

        mapContainerView.delegate = self
    }

    internal func mapView(_ mapView: GMSMapView, idleAt cameraPosition: GMSCameraPosition) {
        let position = cameraPosition.target
        print("Position: \(position.latitude), \(position.longitude)")
    }

    private func loadUsers() {
        userListView.dataSource = dataSource
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            case "ShowDetail":
                guard let userDetailViewController = segue.destination as? UserViewController else {
                    fatalError("Unexpected destination: \(segue.destination)")
                }

                guard let selectedUserCell = sender as? UserTableViewCell else {
                    fatalError("Unexpected sender: \(sender)")
                }

                guard let indexPath = userListView.indexPath(for: selectedUserCell) else {
                    fatalError("The selected cell is not being displayed by the table")
                }

                let selectedUser = DataStore.sharedInstance.allUsers()[indexPath.row]
                userDetailViewController.user = selectedUser

            default:
                fatalError("Unexpected Segue Identifier; \(segue.identifier)")

        }
    }
}
