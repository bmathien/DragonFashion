//
//  DragonDetailViewController.m
//  DragonFashion
//
//  Created by teacher on 5/20/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "DragonDetailViewController.h"

@interface DragonDetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *dragonBio;

@end

@implementation DragonDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = self.dragon.fullName;
    self.dragonBio.text = self.dragon.bio;
    [self.dragonBio sizeToFit];
}



@end
