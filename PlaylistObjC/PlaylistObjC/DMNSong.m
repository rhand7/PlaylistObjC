//
//  DMNSong.m
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import "DMNSong.h"

@implementation DMNSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[DMNSong class]]) { return NO; }
    DMNSong *song = object;
    if (![song.title isEqualToString:self.title] && song.title != self.title) { return NO; }
    if (![song.artist isEqualToString:self.artist] && song.artist != self.artist) { return NO; }
    return YES; 
}

@end
