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
  // call super's init to get basic instance
  if (self = [super init]) // made an instance, set the voltage to 120
  {
    _productName = @"Unknown Product";
    _voltage = 120;
  }
  
  return self;
} // init

- (instancetype)initWithProductName:(NSString *)prodName
{
  // call super's init to get basic instance
  if (self = [super init]) // made an instance, set the voltage to 120
  {
    [self setProductName:prodName];
    [self setVoltage:120];
  }
  
  return self;
} // initWithProductName()

- (NSString *)description
{
  return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
} // description

@end
