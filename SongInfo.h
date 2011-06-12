//
//  SongInfo.h
//  iTunesController
//
//  Created by Manoj Sharma on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "iTunes.h"

@interface SongInfo : NSObject
{
#pragma mark iVars
	NSString		*strSongTitle;
	NSString		*strSongArtist;
	NSString		*strSongClass;
	NSString		*strURL;
	float			nTrackLengthInSeconds;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

@property (retain, nonatomic)	NSString		*strSongTitle;
@property (retain, nonatomic)	NSString		*strSongArtist;
@property (retain, nonatomic)	NSString		*strSongClass;
@property (retain, nonatomic)	NSString		*strURL;
@property (assign)				float			nTrackLengthInSeconds;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

- (SongInfo *) initWithITunesTrack: (iTunesTrack *) aTrack;
- (NSString *) description;
@end

//******************* iTunesCurrentSongInfo  *********************
@interface iTunesCurrentSongInfo : NSObject
{
	 SongInfo			* songInfo;
	 int				nPlayPosition;
}

@property (retain, nonatomic)	SongInfo * songInfo;
@property (assign)				int nPlayPosition;

- (NSString *) description;
@end
