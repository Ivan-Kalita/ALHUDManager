//
//  ViewController.m
//  HUDManager
//
//  Created by Lobanov Aleksey on 12.08.13.
//  Copyright (c) 2013 Lobanov Aleksey. All rights reserved.
//

#import "ViewController.h"
#import "ALHUDManager.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *hudview;
@property (nonatomic, strong, readonly) UIControl *overlayView;

@end

@implementation ViewController

@synthesize overlayView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) show:(id)sender {
	HUDItem *item = [HUDItem itemWithTitle:@"Title" andDetail:@"Test"];
	item.hideDelay = 2.0;
	item.imageType = HUDImage_SadFace;
    item.dimBackground = YES;
    item.mode = ProgressHUDModeText;
	[ALHUDManager showHUD:item];
}

- (IBAction) showWithCustomImage:(id)sender {
    HUDItem *item = [HUDItem itemWithTitle:@"Nice heart" andDetail:@"Smile bitch!"];
    item.hudCustomImagePath = @"hudTest.png";
    item.hideDelay = 7.0;
    [ALHUDManager showHUD:item];
}

@end
