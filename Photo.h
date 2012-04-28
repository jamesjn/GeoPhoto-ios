//
//  Photo.h
//  GeoPhoto
//
//  Created by James Chiang on 4/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface Photo : NSObject <MKAnnotation> {
@private
    CLLocationDegrees _latitude;
    CLLocationDegrees _longitude;
}

@property (strong, nonatomic, readonly) CLLocation *location;

- (id)initWithAttributes:(NSDictionary *)attributes;

@end
