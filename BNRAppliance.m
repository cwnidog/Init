//
//  BNRAppliance.m
//  Appliances
//
//  Created by John Leonard on 8/26/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init
{
  // call super's init
  self = [super init];
  
  if (self) // made an instance, set the voltage to 120
  {
    _voltage = 120;
  }
  return self;
} // init

- (instancetype)initWithProductName:(NSString *)pn
{
  self = [super init];
  
  if (self)
  {
    _productName = [pn copy];
    _voltage = 120;
  }
  
  return self;
  
} // initWithProductName()

@end
