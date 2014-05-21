//
//  Dragon.m
//  DragonFashion
//
//  Created by teacher on 5/20/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (Dragon *) initWithFullName: (NSString *) fullName;
{
    self.fullName = fullName;
    return self;
}

- (Dragon *) initWithFullName: (NSString *) fullName signatureClothingItem: (NSString *) signatureClothingItem;
{
    self.signatureClothingItem = signatureClothingItem;
    self.fullName = fullName;
    return self;
}

- (NSString * ) description
{
    return [NSString stringWithFormat: @"%@ %@", self.fullName, self.signatureClothingItem];
}
@end
