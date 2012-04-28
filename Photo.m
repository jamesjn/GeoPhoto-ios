//
//  Photo.m
//  GeoPhoto
//
//  Created by James Chiang on 4/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (id)initWithAttributes:(NSDictionary *)attributes{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _latitude = [[attributes valueForKeyPath:@"lat"] doubleValue];
    _longitude = [[attributes valueForKeyPath:@"lng"] doubleValue];
    
    return self;
}

- (NSString *)title {
    return [NSString stringWithFormat:@"Photo at (%f, %f)", _latitude, _longitude];
}

- (CLLocationCoordinate2D)coordinate {
    return CLLocationCoordinate2DMake(_latitude, _longitude);
}

@end
