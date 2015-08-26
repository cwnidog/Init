//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by John Leonard on 8/26/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;

// designated initializer
- (instancetype)initWithProductName:(NSString*)prodName firstOwnerName:(NSString *)firstOwnerName;
- (instancetype)initWithProductName:(NSString *)prodName;

- (void)addOwnerName:(NSString *)ownerName;
- (void)removeOwnerName:(NSString *)ownerName;

@end
