//
//  DMNPlaylist.m
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import "DMNPlaylist.h"

@interface DMNPlaylist()

@property (nonatomic, strong) NSMutableArray *internalSongs;

@end

@implementation DMNPlaylist

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

#pragma mark - Properties

- (NSArray *)songs { return self.internalSongs; }

- (void)addSongsObject:(DMNSong *)song
{
    [self.internalSongs addObject:song];  //[] - means performing method on object
}

- (void)removeSongsObject:(DMNSong *)song
{
    [self.internalSongs removeObject:song]; //obj c can automatically compare obj:obj, no need for index 
}

@end
