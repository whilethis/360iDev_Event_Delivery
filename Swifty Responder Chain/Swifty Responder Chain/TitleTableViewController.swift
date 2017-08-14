//
//  TitleTableViewController.swift
//  Swifty Responder Chain
//
//  Created by Brandon Alexander on 4/27/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import UIKit

class TitleTableViewController: UITableViewController {
    fileprivate let dataSource = ["The Phantom Menace", "Attack of the Clones", "Revenge of the Sith", "A New Hope", "Empire Strikes Back", "Return of the Jedi", "The Force Awakens", "The Last Jedi"];
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TableViewCell")!
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let tableCell = cell as? TitleTableViewCell else {
            return
        }
        
        tableCell.configureWithTitle(dataSource[indexPath.row])
    }
    
}

extension TitleTableViewController : TitleTableViewCellActionHandler {
    func updateTitleForCell(_ sender: AnyObject, forEvent event:TitleEvent) {
        title = event.title
    }
}
