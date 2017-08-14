//
//  TitleTableViewCell.swift
//  Swifty Responder Chain
//
//  Created by Brandon Alexander on 4/27/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

import UIKit

class TitleEvent : UIEvent {
    let title:String

    init(title:String) {
        self.title = title
    }
}

@objc protocol TitleTableViewCellActionHandler {
    func updateTitleForCell(_ sender: AnyObject, forEvent event:TitleEvent);
}

private extension Selector {
    static let TitleUpdated = #selector(TitleTableViewCellActionHandler.updateTitleForCell(_:forEvent:))
}

class TitleTableViewCell: UITableViewCell, ResponderChainActionSenderType {
    @IBOutlet var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithTitle(_ title:String) {
        titleLabel.text = title
    }
    
    @IBAction func cellButtonTapped(_ sender:AnyObject) {
        let event = TitleEvent(title: titleLabel.text!)
        
        let _ = sendNilTargetedAction(.TitleUpdated, sender: self, forEvent: event)
    }

}
