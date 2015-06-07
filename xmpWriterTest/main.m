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
        
        Module *myModule;
        myModule = [[Module alloc] init];
        
        // set up our paths and URLs
        NSString *modulePath = @"/Users/dcarmich/war.s3m";
        NSString *wavePath = @"/Users/dcarmich/war.wav";
        NSString *aiffPath = @"/Users/dcarmich/war.aiff";
        
        NSURL *moduleURL = [[NSURL alloc] initFileURLWithPath:modulePath];
        NSURL *waveURL = [[NSURL alloc] initFileURLWithPath:wavePath];
        NSURL *aiffURL = [[NSURL alloc] initFileURLWithPath:aiffPath];
        
        [myModule setFilePath:moduleURL];
        
        // load a module into the instance
        NSLog(@"Loading our module: %@", modulePath);
        [myWriter loadModule:myModule error:nil];

        // write it to a WAV
        NSLog(@"Writing to a WAV: %@", wavePath);
        [myWriter writeModuleWAV:waveURL error:nil];

        // write it to a AIFF
        NSLog(@"Writing to a AIFF: %@", aiffPath);
        [myWriter writeModuleAIFF:aiffURL error:nil];

        // We're done
        NSLog(@"We're done!");
        
    }
    return 0;
}
