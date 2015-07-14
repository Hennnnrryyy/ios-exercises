//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *array = [NSMutableArray array];
    for(NSDictionary *dictionary in charactersArray){
        [array addObject: [self favoriteDrinkForStarTrekCharacterDictionary:dictionary]];
    }
    return array;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"quote"] = @"insert quote here";
    return dictionary;
}

@end
