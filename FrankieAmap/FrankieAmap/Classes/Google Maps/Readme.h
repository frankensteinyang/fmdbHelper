//
//  Readme.h
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/19/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#ifndef FrankieAmap_Readme_h
#define FrankieAmap_Readme_h

//If you're new to iOS, create a Single View Application, and ensure that Use Automatic Reference Counting is on.

//Drag the GoogleMaps.framework bundle to your project. When prompted, select Copy items into destination group's folder.
//Right-click GoogleMaps.framework in your project, and select Show In Finder.
//Drag the GoogleMaps.bundle from the Resources folder to your project. When prompted, ensure Copy items into destination group's folder is not selected.
//Select your project from the Project Navigator, and choose your application's target.

//Open the Build Phases tab, and within Link Binary with Libraries, add the following frameworks:
//AVFoundation.framework
//CoreData.framework
//CoreLocation.framework
//CoreText.framework
//GLKit.framework
//ImageIO.framework
//libc++.dylib
//libicucore.dylib
//libz.dylib
//OpenGLES.framework
//QuartzCore.framework
//SystemConfiguration.framework

//Choose your project, rather than a specific target, and open the Build Settings tab.
//In the Other Linker Flags section, add -ObjC. If these settings are not visible, change the filter in the Build Settings bar from Basic to All.
//Finally, add your API key to your AppDelegate.
//#import <GoogleMaps/GoogleMaps.h>
//Add the following to your application:didFinishLaunchingWithOptions: method, replacing API_KEY with your API key.
//[GMSServices provideAPIKey:@"API_KEY"];

#endif
