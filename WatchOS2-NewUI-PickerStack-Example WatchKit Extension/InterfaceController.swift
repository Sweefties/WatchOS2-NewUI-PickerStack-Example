//
//  InterfaceController.swift
//  WatchOS2-NewUI-PickerStack-Example WatchKit Extension
//
//  Created by Wlad Dicario on 24/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var pickerStack: WKInterfacePicker!
    @IBOutlet var pickerListTitle: WKInterfaceLabel!
    
    var pickerItems: [WKPickerItem] = []
    var images = [String]()
    var object = [String]()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
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
    
    @IBAction func pickerSelected(_ value: Int) {
        let selectedItem = self.pickerItems[value]
        self.pickerListTitle.setText(selectedItem.title!)
    }
}

//MARK: Interface Controller Extension
extension InterfaceController {
    
    // set Data List for Picker Stack.
    func setDataList() {
        for i in 0...15 {
            let item = WKPickerItem()
            item.title = "\(object[i])"
            item.contentImage = WKImage(imageName: "\(images[i])")
            pickerItems.append(item)
        }
        self.pickerStack.setItems(pickerItems)
    }
    
    // init selected Item Label.
    func initSelectedItemLbl() {
        let selectedItem = self.pickerItems[0]
        self.pickerListTitle.setText(selectedItem.title!)
    }
    
    // append object/images list strings.
    func appendData() {
        self.object = ["OS X El Capitan", "iOS 9.0", "watchOS 2", "Swift 2", "Multitasking", "Search API", "GameplayKit", "ReplayKit", "Model I/O", "App Thinning", "CloudKit", "HomeKit", "Playgrounds", "HealthKit", "WatchKit", "Maps"]
        self.images = ["elcapitanlogo", "IOS_9_Logo", "watch-os-2", "swift", "multitasking", "spotlight-ios", "gameplaykit", "replaykit", "model-io", "app-thinning", "cloudkit", "homekit", "playgrounds", "healthkit", "watchkit", "maps_ios"]
    }
}

