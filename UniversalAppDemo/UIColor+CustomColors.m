//
//  UIColor+CustomColors.m
//  UniversalAppDemo
//
//  Created by Edison Martinez on 5/4/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "UIColor+CustomColors.h"

@implementation UIColor (CustomColors)
+ (UIColor *)customBlue {
	return [UIColor colorWithRed:49.0 / 255.0
	                       green:53.0 / 255.0
	                        blue:64.0 / 255.0
	                       alpha:1.0];
}
+ (UIColor *)customOrange {
	return [UIColor colorWithRed:250.0 / 255.0
	                       green:128.0 / 255.0
	                        blue:48.0 / 255.0
	                       alpha:1.0];
}
+ (UIColor *)customWhite {
	return [UIColor colorWithRed:242.0 / 255.0
	                       green:242.0 / 255.0
	                        blue:242.0 / 255.0
	                       alpha:1.0];
}
@end
