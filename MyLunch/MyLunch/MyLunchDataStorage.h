//
//  MyLunchDataStorage.h
//  MyLunch
//
//  Created by Administrator on 12/23/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyLunchDataStorage : NSObject
{
    NSMutableArray *lunchItemsArray;
    NSInteger currentIndex;
}

@property (nonatomic, strong) NSMutableArray *lunchItemsArray;
@property NSInteger currentIndex;
//+(id) sharedInstance;
+(MyLunchDataStorage*) sharedInstance;
//+(id) init;

@end
