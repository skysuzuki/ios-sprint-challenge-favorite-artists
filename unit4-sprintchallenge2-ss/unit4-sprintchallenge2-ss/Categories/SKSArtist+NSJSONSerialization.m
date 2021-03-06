//
//  SKSArtist+NSJSONSerialization.m
//  unit4-sprintchallenge2-ss
//
//  Created by Lambda_School_Loaner_204 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSArtist+NSJSONSerialization.h"

@implementation SKSArtist (NSJSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    NSString *name = dictionary[@"strArtist"];
    NSString *strFormedYear = dictionary[@"intFormedYear"];
    int formedYear = 0;
    if ([strFormedYear isKindOfClass:[NSString class]]) {
       formedYear = [strFormedYear intValue];
    }
    NSString *biography = dictionary[@"strBiographyEN"];

    return [self initWithName:name biography:biography formedYear:formedYear];

}

- (NSDictionary *)toDictionary {

    NSDictionary *artistDictionary = @{
        @"strArtist" : self.name,
        @"intFormedYear" : [self formedYearString],
        @"strBiographyEN" : self.biography
    };

    return artistDictionary;
}

@end
