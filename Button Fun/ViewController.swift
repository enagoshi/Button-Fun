//
//  ViewController.swift
//  Button Fun
//
//  Created by enagoshi on 3/10/15.
//  Copyright (c) 2015 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        let plainText = "\(title) button pressed"
        
        //statusLabel.text = plainText
        
        //creates an attributed string
        let styledText = NSMutableAttributedString(string: plainText)
        //says use bold with the same size font as is currently being used.
        let attributes = [NSFontAttributeName: UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)]
        //asks plainText string to give us the range of the substring (start index and length)
        let nameRange = (plainText as NSString).rangeOfString(title)
        //apply attributes.
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
}

