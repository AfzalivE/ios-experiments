//
//  ViewController.swift
//  Maps
//
//  Created by Afzal Najam on 2017-06-04.
//  Copyright (c) 2017 Afzal Najam. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {
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

        mapContainerView.camera = camera

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapContainerView
    }

    private func loadUsers() {
        userListView.dataSource = dataSource
    }
}
