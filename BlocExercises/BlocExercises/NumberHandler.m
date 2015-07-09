//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithInt:[number intValue] * 2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
    BOOL firstNumIsLower = number < otherNumber ? YES : NO;
    
    if(firstNumIsLower){
        for(NSInteger i = number; i <= otherNumber; i++){
            [arrayToReturn addObject: [NSNumber numberWithInteger:i]];
        }
    }
    else{
        for(NSInteger i = otherNumber; i <= number; i++){
            [arrayToReturn addObject: [NSNumber numberWithInteger:i]];
        }
    }
    return arrayToReturn;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSNumber *lowestNum = [NSNumber numberWithInteger:[arrayOfNumbers[0] integerValue]];
    
    for(NSInteger i = 0; i < arrayOfNumbers.count-1; i++){
        
        if([arrayOfNumbers[i+1] integerValue] < [arrayOfNumbers[i] integerValue]){
            
            lowestNum = [NSNumber numberWithInteger:[arrayOfNumbers[i+1] integerValue]];
        
        }
        
    }
    return [lowestNum integerValue];
}

@end
