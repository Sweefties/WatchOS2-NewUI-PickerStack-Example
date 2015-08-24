//
//  OutlineCaptionInterfaceController.swift
//  WatchOS2-NewUI-PickerStack-Example
//
//  Created by Wlad Dicario on 24/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class OutlineCaptionInterfaceController: WKInterfaceController {

    @IBOutlet var pickerStack: WKInterfacePicker!
    
    var pickerItems: [WKPickerItem] = []
    var images = [String]()
    var object = [String]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        appendData()
        setDataList()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        initSelectedItemLbl()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerSelected(value: Int) {
        let selectedItem = self.pickerItems[value]
        print(selectedItem.title!)
    }
}

//MARK: Outline Caption Interface Controller Extension
extension OutlineCaptionInterfaceController {
    
    // set Data List for Picker Stack.
    func setDataList() {
        for i in 0...15 {
            let item = WKPickerItem()
            item.title = "\(object[i])"
            // to show caption in outline
            item.caption = "\(object[i])"
            // to show stack content image
            item.contentImage = WKImage(imageName: "\(images[i])")
            pickerItems.append(item)
        }
        self.pickerStack.setItems(pickerItems)
    }
    
    // init selected Item.
    func initSelectedItemLbl() {
        let selectedItem = self.pickerItems[0]
        print(selectedItem.title!)
    }
    
    // append object/images list strings.
    func appendData() {
        self.object = ["OS X El Capitan", "iOS 9.0", "watchOS 2", "Swift 2", "Multitasking", "Search API", "GameplayKit", "ReplayKit", "Model I/O", "App Thinning", "CloudKit", "HomeKit", "Playgrounds", "HealthKit", "WatchKit", "Maps"]
        self.images = ["elcapitanlogo", "IOS_9_Logo", "watch-os-2", "swift", "multitasking", "spotlight-ios", "gameplaykit", "replaykit", "model-io", "app-thinning", "cloudkit", "homekit", "playgrounds", "healthkit", "watchkit", "maps_ios"]
    }
}
