//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    /* WORK HERE */
    if(dollars < 5){
        itemToReturn = @"get out of my store";
    }
    if(dollars == 5){
        itemToReturn = @"have some gum";
    }
    if(dollars == 6){
        itemToReturn = @"have an apple";
    }
    if(dollars == 1000){
        itemToReturn = @"have an Apple computer";
    }
    if(dollars == 1000000000){
        itemToReturn = @"have The Big Apple";
    }
    
    
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost;
    
    cost = self.getsDiscount ? 24 * .75 : 24;
    
    return cost;
}

@end
