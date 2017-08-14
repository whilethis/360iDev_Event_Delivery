//
//  BlueViewController.swift
//  System Events
//
//  Created by Brandon Alexander on 5/11/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import UIKit

class FooView: UIView {
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override var keyCommands: [UIKeyCommand]? {
        return [UIKeyCommand.init(input: "g", modifierFlags: UIKeyModifierFlags.command, action: #selector(FooView.gKeyPressed(_:)))]
    }
    
    @objc
    func gKeyPressed(_ sender: AnyObject) {
        backgroundColor = UIColor.green
    }
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
        fooView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        fooView.widthAnchor.constraint(equalToConstant: 40.0).isActive = true

        fooView.becomeFirstResponder()
    }

    @IBAction func viewTapped(recognizer:UIGestureRecognizer) {
        let _ = becomeFirstResponder()
    }
}

// Responder Chain
extension BlueViewController {

    override var canBecomeFirstResponder : Bool {
        return true
    }

    override func becomeFirstResponder() -> Bool {
        view.backgroundColor = UIColor.blue
        fooView.backgroundColor = UIColor.orange

        return super.becomeFirstResponder()
    }

    override func resignFirstResponder() -> Bool {
        view.backgroundColor = UIColor.gray
        fooView.backgroundColor = UIColor.orange

        return super.resignFirstResponder()
    }

}

// Key Commands
extension BlueViewController {
    override var keyCommands: [UIKeyCommand]? {
        return [UIKeyCommand.init(input: "g", modifierFlags: UIKeyModifierFlags.command, action: #selector(BlueViewController.gKeyPressed(_:)))]
    }
    
    @objc
    func gKeyPressed(_ sender: AnyObject) {
        fooView.backgroundColor = UIColor.lightGray
    }

}
