//
//  main.m
//  yalu102
//
//  Created by qwertyoruiop on 05/01/2017.
//  Copyright © 2017 kimjongcracks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include <dlfcn.h>

int (*gsystem)(const char *) = 0;

int main(int argc, char * argv[]) {
    @autoreleasepool {
        gsystem = dlsym(RTLD_DEFAULT,"system"); //thx tihmstar :)
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
