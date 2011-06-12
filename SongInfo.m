//
//  SongInfo.m
//  iTunesController
//
//  Created by Manoj Sharma on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SongInfo.h"
#import "iTunes.h"

@implementation SongInfo
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#pragma mark -
#pragma mark Property synthesizers:
					@synthesize strSongTitle, strSongArtist, strSongClass, strURL;
					@synthesize nTrackLengthInSeconds;
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#pragma mark -
#pragma mark Methods definitions

- (SongInfo *) initWithITunesTrack: (iTunesTrack *) aTrack
{
	if(self = [super init])	{
		self.strSongClass			= [aTrack className];
		self.strSongTitle			= [aTrack name];
		self.nTrackLengthInSeconds	= [aTrack duration];
		self.strSongArtist			= [aTrack artist];		
	}
	return self;
}

- (NSString *) description	{
	return [NSString stringWithFormat:@"\nTitle:%@\nArtist:%@\nClass:%@URL:%@\nLength:%f",
			strSongTitle, strSongArtist, strSongClass, strURL, nTrackLengthInSeconds];
}

@end


// **************** iTunesCurrentSongInfo *******************

@implementation iTunesCurrentSongInfo

@synthesize nPlayPosition;
@synthesize songInfo;

- (id) init
{
	self = [super init];
	if (self != nil) {
		//iTunesApplication * iTunes = [[SBApplication alloc] initWithBundleIdentifier:@"com.apple.iTunes"];
		iTunesApplication * iTunes = [[SBApplication alloc] initWithURL:[NSURL URLWithString:@"/Applications/iTunes.app"]];
		iTunesTrack * curTrack = [iTunes currentTrack];
		songInfo = [[SongInfo alloc] initWithITunesTrack:curTrack];
		self.nPlayPosition = [iTunes playerPosition];
		[iTunes release];
	}
	return self;
}

- (void) dealloc
{
	self.songInfo = nil;	// will call release and then assigns nil too
	[super dealloc];
}

- (NSString *) description	{
	return [NSString stringWithFormat:@"SongInfo:%@\n Position:%dsec",
			self.songInfo, self.nPlayPosition];
}
@end
