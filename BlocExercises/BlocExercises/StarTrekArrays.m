//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString: @";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString: @";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *copy = [characterArray mutableCopy];
    NSSortDescriptor *alphaOrder = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [copy sortUsingDescriptors: @[alphaOrder]];
    return copy;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    BOOL containsWorf;
    NSString *totalStringFromArray = [self stringOfStarTrekCharactersFromArray: characterArray];
    
    containsWorf = [totalStringFromArray rangeOfString:@"worf" options:NSCaseInsensitiveSearch].location != NSNotFound ? YES : NO; // If 'worf' is found in any of the strings in the array(.location != NSNotFound), regardless of case, return YES

    return containsWorf;
}

@end
