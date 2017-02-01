//
//  TappableView.swift
//  TapGestureOnTopOfTableView
//
//  Created by Alex Tang on 2/1/17.
//  Copyright © 2017 Funkware. All rights reserved.
//

import UIKit

class TappableView: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    func setup() {
        let singleTapRecognizer = UITapGestureRecognizer()
        singleTapRecognizer.addTarget(self, action: #selector(self.tappedHandler(_:)))
        singleTapRecognizer.numberOfTapsRequired = 1
        singleTapRecognizer.cancelsTouchesInView = false
        self.addGestureRecognizer(singleTapRecognizer)
        //        registerForKeyboardNotifications()
    }

    func tappedHandler(_ sender: UITapGestureRecognizer) {
        NSLog("Got a tap")
    }


}
