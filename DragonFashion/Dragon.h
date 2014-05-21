//
//  Dragon.h
//  DragonFashion
//
//  Created by teacher on 5/20/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property NSString *signatureClothingItem;
@property NSString *bio;


- (Dragon *) initWithFullName: (NSString *) fullName;

- (Dragon *) initWithFullName: (NSString *) fullName signatureClothingItem: (NSString *) signatureClothingItem;

@end
