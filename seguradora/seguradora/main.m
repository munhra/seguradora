//
//  main.m
//  seguradora
//
//  Created by Rafael Munhoz on 13/12/14.
//  Copyright (c) 2014 Rafael Munhoz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    int retVal;
    @autoreleasepool {
        @try {
                retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
        @catch (NSException *exception) {
            NSLog(@"Exception !!! %@",[exception callStackSymbols]);
            @throw;

        }
        return retVal;
    }
}
