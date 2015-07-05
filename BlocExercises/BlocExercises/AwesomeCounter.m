//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *stringToManipulate = [@"" mutableCopy];
    BOOL numIsLow = number < otherNumber ? YES : NO;
    
    if(numIsLow){
        for(NSInteger i = number; i <= otherNumber; i++){
            [stringToManipulate appendFormat:@"%ld",(long)i];
        }
    }
    else{
        for(NSInteger i = otherNumber; i <= number; i++){
            [stringToManipulate appendFormat:@"%ld",(long)i];
        }
    }
    
    NSString *stringtoReturn = stringToManipulate;
    
    return stringtoReturn;
    
}

@end
