//
//  DMNPlaylistDetailViewController.h
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMNPlaylist.h" 

@interface DMNPlaylistDetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> 

@property (nonatomic, strong) DMNPlaylist *playlist;

@end
