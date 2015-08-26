//
//  BNRAppliance.h
//  Appliances
//
//  Created by John Leonard on 8/26/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

- (instancetype)initWithProductName:(NSString*)pn;

@end
