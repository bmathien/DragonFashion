//
//  ViewController.m
//  DragonFashion
//
//  Created by teacher on 5/20/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "ViewController.h"
#import "DragonDetailViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    Dragon *dragon1 = [[Dragon alloc] init];
    dragon1.fullName = @"Puff";
    dragon1.signatureClothingItem = @"Red Scarf";
    dragon1.bio = @"The Dragon from Peter, Paul, & Mary";

//created a custom class in the dragon.h and dragon.m file
    Dragon *dragon2 = [[Dragon alloc] initWithFullName:@"Don" signatureClothingItem:@"Earring"];
    dragon2.bio = @"The Dragon from Mobile Makers.";
    Dragon *dragon3 = [[Dragon alloc] initWithFullName:@"Smaug" signatureClothingItem:@"Dorky Glasses"];
    dragon3.bio = @"The Dragon from Lord of the Rings.";
    Dragon *dragon4 = [[Dragon alloc] initWithFullName:@"Luck Dragon" signatureClothingItem:@"Tank Top"];
    dragon4.bio = @"The Dragon from Neverending Story.";
    Dragon *dragon5 = [[Dragon alloc] initWithFullName:@"Charzard" signatureClothingItem:@"High Heels"];
    dragon5.bio = @"The Dragon from Pokemon.";

    self.dragons = [NSArray arrayWithObjects:dragon1, dragon2, dragon3, dragon4, dragon5, nil];

    for (Dragon *dragon in self.dragons)
    {
        NSLog(@"Dragon: %@", dragon);
    }

}



- (NSInteger) tableView:(UITableView *)mytableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragons.count;
}



- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.myTableView.indexPathForSelectedRow;
    Dragon *selectedDragon = [self.dragons objectAtIndex:selectedIndexPath.row];
    DragonDetailViewController *dragonViewController = segue.destinationViewController;
    dragonViewController.dragon = selectedDragon;
}




@end
