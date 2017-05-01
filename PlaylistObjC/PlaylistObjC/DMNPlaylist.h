//
//  DMNPlaylist.h
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMNSong.h" 

@interface DMNPlaylist : NSObject

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs;

//need -- name and songs
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong, readonly) NSArray *songs;
- (void)addSongsObject:(DMNSong *)song;
- (void)removeSongsObject:(DMNSong *)song;

@end
