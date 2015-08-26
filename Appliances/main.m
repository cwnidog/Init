//
//  main.m
//  Appliances
//
//  Created by John Leonard on 8/26/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    // create a default appliance
    BNRAppliance *a = [BNRAppliance new];
    NSLog(@"a is %@", a);
    
    // give it some non-default values
    [a setProductName:@"Washing Machine"];
    [a setVoltage:240];
    
    // display the changes
    NSLog(@"a is %@", a);
    
    // create an owned appliance
    BNROwnedAppliance *ownedApp = [[BNROwnedAppliance alloc] initWithProductName:@"Fan" firstOwnerName:@"Errol Flynn"];
    NSLog(@"The ownedAppliance is %@", ownedApp);
    
    // add another owner
    [ownedApp addOwnerName:@"Fred MacMurray"];
    NSLog(@"The ownedAppliance is %@", ownedApp);
    NSLog(@"The owned Appliance is owned by %@", [ownedApp ownerNames]);
    
    // delete an owner
    [ownedApp removeOwnerName:@"Errol Flynn"];
    NSLog(@"Deleting an owner");
    NSLog(@"The owned Appliance is now owned by %@", [ownedApp ownerNames]);
    
  } // @autoreleasepool
    return 0;
} // main()
