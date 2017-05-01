//
//  DMNPlaylistDetailViewController.m
//  PlaylistObjC
//
//  Created by handje on 5/1/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

#import "DMNPlaylistDetailViewController.h"
#import "DMNPlaylistController.h"

@interface DMNPlaylistDetailViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *artistTextField;

@end

@implementation DMNPlaylistDetailViewController

- (IBAction)addButtonTapped:(id)sender {
    [[DMNPlaylistController sharedInstance] addSongWithTitle:self.titleTextField.text andArtist:self.artistTextField.text toPlaylist:self.playlist];
    self.titleTextField.text = @"";
    self.artistTextField.text = @"";
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource/Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.playlist.songs count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"songCell" forIndexPath:indexPath];
    DMNSong *song = self.playlist.songs[indexPath.row];
    cell.textLabel.text = song.title;
    cell.detailTextLabel.text = song.artist;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DMNSong *song = self.playlist.songs[indexPath.row];
        [[DMNPlaylistController sharedInstance] deleteSong:song fromPlaylist:self.playlist];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

@end
