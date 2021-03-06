//
//  PaintCodeTutorial.h
//  PaintCodeTutorial
//
//  Created by JonkeyChen on 16/4/5.
//  Copyright (c) 2016 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface PaintCodeTutorial : NSObject

// iOS Controls Customization Outlets
@property(strong, nonatomic) IBOutletCollection(NSObject) NSArray* stopwatchTargets;

// Colors
+ (UIColor*)color;

// Drawing Methods
+ (void)drawStopwatch;
+ (void)drawCanvas1;

// Generated Images
+ (UIImage*)imageOfStopwatch;

@end
