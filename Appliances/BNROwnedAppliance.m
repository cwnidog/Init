//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by John Leonard on 8/26/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
  NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)prodName firstOwnerName:(NSString *)firstOwnName
{
  if (self = [super initWithProductName:prodName])
  {
    _ownerNames = [[NSMutableSet alloc] init];
    
    // is first owner name non-nil?
    if (firstOwnName)
    {
      [_ownerNames addObject:firstOwnName];
    }
  }
  
  return self;
} // initWithProductName()

- (instancetype)initWithProductName:(NSString *)prodName
{
  return [self initWithProductName:prodName firstOwnerName:nil];
} // initWithProductName()

- (void)addOwnerName:(NSString *)ownerName
{
  [_ownerNames addObject:ownerName];
} // addOwnerName()

- (void)removeOwnerName:(NSString *)ownerName
{
  [_ownerNames removeObject:ownerName];
} // removeOwnerName()

- (NSSet *)ownerNames
{
  return [_ownerNames copy];
} // ownerNames()

@end
