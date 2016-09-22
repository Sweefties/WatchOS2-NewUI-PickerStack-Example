![](https://img.shields.io/badge/build-pass-brightgreen.svg?style=flat-square)
![](https://img.shields.io/badge/platform-WatchOS2-ff69b4.svg?style=flat-square)
![](https://img.shields.io/badge/Require-XCode7-lightgrey.svg?style=flat-square)


# WatchOS2-NewUI-PickerStack-Example
WatchOS 2 Experiments - New UI Components - Picker Stack

## Example

![](https://raw.githubusercontent.com/Sweefties/WatchOS2-NewUI-PickerStack-Example/master/source/Apple_Watch_template-PickerStack.jpg)

## Requirements

- >= XCode 7 beta 5~.
- >= Swift 2.

Tested on WatchOS2 Simulator.

## Important

Get the `master` branch for XCode 8 / Swift 3 updated project.

## Usage

To run the example project, clone the repo.

### Extra Simple!

Configure your Storyboard :
  - Picker attributes inspector
  - set 'Style' attribute to 'Stack'

```swift
for i in 0...15 {
    let item = WKPickerItem()
    item.title = "\(object[i])"
    item.contentImage = WKImage(imageName: "\(images[i])")
    pickerItems.append(item)
  }
self.pickerStack.setItems(pickerItems)
```
