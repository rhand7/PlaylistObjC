//
//  DMNPlaylistController.m
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import "DMNPlaylistController.h"

@interface DMNPlaylistController()

@property (nonatomic, strong) NSMutableArray *interalPlaylists;

@end

@implementation DMNPlaylistController

+ (DMNPlaylistController *)sharedInstance
{
    static DMNPlaylistController *sharedInstance = nil; //once sharedInstance has a property, it can't be changed
    static dispatch_once_t onceToken;                   //this can only be executed once
    dispatch_once(&onceToken, ^{                        //once this block is executed we will know when it gets dispatched
        sharedInstance = [DMNPlaylistController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _interalPlaylists = [[NSMutableArray alloc] init]; //alloc enough memory to store an NSMutable array
    }
    return self;
}

- (void)createPlaylistWithTitle:(NSString *)title
{
    DMNPlaylist *playlist = [[DMNPlaylist alloc] initWithName:title songs:[[NSMutableArray alloc] init]];
    [self.interalPlaylists addObject:playlist];
}

- (void)deletePlaylist:(DMNPlaylist *)playlist
{
    [self.interalPlaylists removeObject:playlist];
}

- (void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(DMNPlaylist *)playlist
{
    DMNSong *song = [[DMNSong alloc] initWithTitle:title artist:artist];
    [playlist addSongsObject:song];
}

- (void)deleteSong:(DMNSong *)song fromPlaylist:(DMNPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}

#pragma mark - Properties

- (NSArray *)playlists { return self.interalPlaylists; }

@end
