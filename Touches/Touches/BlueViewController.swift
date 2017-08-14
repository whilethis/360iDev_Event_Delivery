//
//  BlueViewController.swift
//  Touches
//
//  Created by Brandon Alexander on 5/11/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import UIKit

class FooView: UIView {
}

class BlueViewController: UIViewController {

    let fooView = FooView()
    override func viewDidLoad() {
        super.viewDidLoad()

        fooView.translatesAutoresizingMaskIntoConstraints = false
        fooView.backgroundColor = UIColor.orange
        view.addSubview(fooView)

        fooView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fooView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        fooView.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
        fooView.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
    }
}
