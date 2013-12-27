//
//  ScreenDimPlugin.m
//  ios-cordova
//
//  Created by Andrew Lunny on 12-07-11.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//  
//  Updated for PhoneGap Build support by Matthew Rice

#import "ScreenDimPlugin.h"

@implementation ScreenDimPlugin

- (void) enable:(CDVInvokedUrlCommand*)command {
  NSString *callbackId = command.callbackId;

  // Acquire a reference to the local UIApplication singleton
  UIApplication* app = [UIApplication sharedApplication];

  if (![app isIdleTimerDisabled]) {
    [app setIdleTimerDisabled:true];
  }
  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self writeJavascript:[result toSuccessCallbackString:callbackId]];
}

- (void) disable:(CDVInvokedUrlCommand*)command {
  NSString *callbackId = command.callbackId;

  // Acquire a reference to the local UIApplication singleton
  UIApplication* app = [UIApplication sharedApplication];

  if([app isIdleTimerDisabled]) {
    [app setIdleTimerDisabled:false];
  }
  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self writeJavascript:[result toSuccessCallbackString:callbackId]];
}

@end
