//
//  AppController.m
//  iTunesController
//
//  Created by Manoj Sharma on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"
#import "SongInfo.h"

@implementation AppController

- (void) awakeFromNib	{
	NSLog(@"awake");
	iTunesApp = [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];
	if(!iTunesApp)
		iTunesApp = [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];
		
}

- (IBAction)triggerAction:(id)sender {
	iTunesCurrentSongInfo * curSongInfo = [[iTunesCurrentSongInfo alloc] init];
	NSLog(@"CurSongInfo: %@", curSongInfo);
	[curSongInfo release];
}

@end



