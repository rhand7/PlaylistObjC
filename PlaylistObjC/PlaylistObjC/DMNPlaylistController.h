//
//  DMNPlaylistController.h
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMNSong.h"
#import "DMNPlaylist.h"


@interface DMNPlaylistController : NSObject

+ (DMNPlaylistController *)sharedInstance;
- (instancetype)init;

-(void)createPlaylistWithTitle:(NSString *)title;
- (void)addSongWithTitle:(NSString *)title
               andArtist:(NSString *)artist
              toPlaylist:(DMNPlaylist *)playlist;
- (void)deleteSong:(DMNSong *)song fromPlaylist:(DMNPlaylist *)playlist;
- (void)deletePlaylist:(DMNPlaylist *)playlist;


@property (nonatomic, strong, readonly) NSArray *playlists; 

@end
