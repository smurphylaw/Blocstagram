//
//  BLCImagesTableViewController.m
//  Blocstagram
//
//  Created by Murphy on 8/20/14.
//  Copyright (c) 2014 Murphy. All rights reserved.
//

#import "BLCImagesTableViewController.h"
#import "BLCDataSource.h"
#import "BLCMedia.h"
#import "BLCUser.h"
#import "BLCComment.h"

@interface BLCImagesTableViewController ()

@end

@implementation BLCImagesTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"imageCell"];
}

- (NSMutableArray *) items
{
    return [BLCDataSource sharedInstance].mediaItems;
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
    
    // Configure the cell...
    static NSInteger imageViewTag = 1234;
    UIImageView *imageView = (UIImageView*)[cell.contentView viewWithTag:imageViewTag];
    
    if (!imageView) {
        // This is a new cell, it doesn't have an image view yet
        imageView = [[UIImageView alloc] init];
        imageView.contentMode = UIViewContentModeScaleToFill;
        
        imageView.frame = cell.contentView.bounds;
        imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        imageView.tag = imageViewTag;
        [cell.contentView addSubview:imageView];
    }
    
    BLCMedia *item = self.items[indexPath.row];
    imageView.image = item.image;
    
    return cell;
}
    

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    BLCMedia *item = self.items[indexPath.row];
    UIImage *image = item.image;
    
    return (CGRectGetWidth(self.view.frame) / image.size.width) * image.size.height;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // YES if the row indicated by indexPath is editable; otherwise, NO.
    return YES;
}


// Override to support editing the table view.
- (void)tableView: (UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.items removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        }
}

@end
