# FPT-EKYC
FPT.AI eKYC provides state-of-the-art deep learning algorithms to compare the portrait in personal identification documents such as ID card, driver’s license, passport… with real face to verify whether they are the same person.

This solution can be applied for automated data input process in various domains including finance and banking, telecommunications, travel, tourism and hospitality; in such use cases as bank account opening, credit card application processing, user registration, guest verification / reservation, off-site check-in, etc.

## Requirements

- iOS 10.0+ / macOS 10.12+ / tvOS 10.0+ / watchOS 3.0+
- Xcode 11+
- Swift 5.1+

## Setup
- Download and extract the FEKYC.zip file to get the FEKYC.framework 
- Drag & drop FEKYC.framework to your project

![alt text](https://github.com/tuananhcn08a/FPT-EKYC/blob/master/img/Screen%20Shot%202020-08-17%20at%209.15.55%20AM.png)

- Select your target, then go to the General tab and click (+) in Frameworks, Libraries, and Embedded Content section, make sure FEKYC.framework was added, if not drag and drop the file from the Outline View

![alt text](https://github.com/tuananhcn08a/FPT-EKYC/blob/master/img/Screen%20Shot%202020-08-17%20at%209.29.03%20AM.png)

- Add dependencies:
Add necessary dependencies for fekyc through Cocoapod:
  pod 'MBProgressHUD'
  pod 'Alamofire'
  pod 'TPKeyboardAvoiding'
  pod 'HydraAsync'
  pod 'IDMPhotoBrowser'
  
- Permissions localization description:
FEKYC need access to camera to scan document and access to Photo to get user photo (document photo or selfie photo) to processing
Goto Info.plist file and add 2 key:
  ```
  NSCameraUsageDescription
  NSPhotoLibraryUsageDescription
  ```
  ![alt text](https://github.com/tuananhcn08a/FPT-EKYC/blob/master/img/Screen%20Shot%202020-08-17%20at%209.22.17%20AM.png)
  
- Build & Run

## Usage  

### Import FEKYC 

```swift
import FEKYC
```

### Declare config:
```swift
let config = FEKYCConfig(apiKey: "YOU API KEY", fullName: "YOUR NAME", orcType: FEKYCOrcType.photo, orcDocumentType: FEKYCOrcDocumentType.idCard)
```

### Init and start EKYC:
```swift
let fekyc = FEKYC(config: config)
fekyc.start(from: self) { [weak self] result in
  // 
  print(result)
}
```
