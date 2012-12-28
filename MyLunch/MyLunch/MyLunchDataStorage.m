//
//  MyLunchDataStorage.m
//  MyLunch
//
//  Created by Administrator on 12/23/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchDataStorage.h"

@implementation MyLunchDataStorage

@synthesize lunchItemsArray;
@synthesize currentIndex;

+(MyLunchDataStorage*) sharedInstance
{
    static MyLunchDataStorage *instance = nil;
    static dispatch_once_t onceQueue;

    dispatch_once(&onceQueue, ^{
        instance = [[MyLunchDataStorage alloc] init];
    });
    /*static MyLunchDataStorage *instance = nil;
    
    if (instance == nil)
    {
        instance = [[self alloc] init];
    }*/
    return instance;
}

@end
