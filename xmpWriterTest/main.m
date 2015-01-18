//
//  main.m
//  xmpWriterTest
//
//  Created by Douglas Carmichael on 1/18/15.
//  Copyright (c) 2015 Douglas Carmichael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "xmpWriter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"This is a test of the xmpWriter class.");
     
        // initialize and allocate an instance of xmpWriter
        xmpWriter *myWriter;
        myWriter = [[xmpWriter alloc] init];
        
        // set up our paths and URLs
        NSString *modulePath = @"/Users/dcarmich/wild_impressions.mod";
        NSString *wavePath = @"/Users/dcarmich/wild_impressions.wav";

        NSURL *moduleURL = [[NSURL alloc] initFileURLWithPath:modulePath];
        NSURL *waveURL = [[NSURL alloc] initFileURLWithPath:wavePath];

        // load a module into the instance
        NSLog(@"Loading our module: %@", modulePath);
        [myWriter loadModule:moduleURL error:nil];

        // write it to a WAV
        NSLog(@"Writing to a WAV: %@", wavePath);
        [myWriter writeModule:waveURL error:nil];
        
        // We're done
        NSLog(@"We're done!");
        
    }
    return 0;
}
