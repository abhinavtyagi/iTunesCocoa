//
//  AppController.h
//  iTunesController
//
//  Created by Manoj Sharma on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "iTunes.h"


@interface AppController : NSObject {
	iTunesApplication * iTunesApp;
}

- (IBAction)triggerAction:(id)sender;

@end
