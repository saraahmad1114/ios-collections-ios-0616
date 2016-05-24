//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

/**
 
 * Define your methods here.
 
 */
//Done with this method from the previous lab, go back to the lab to READ IT AGAIN!!!
-(NSArray*)arrayBySortingArrayAscending:(NSArray*)array{
    //NSArray *newArray= @[];
    NSSortDescriptor *sortByAscendingOrder = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    array = [array sortedArrayUsingDescriptors:@[sortByAscendingOrder]];
    return array;
}
//Done with this method from the previous lab, GO BACK TO THE LAB TO READ IT AGAIN!!!
-(NSArray*)arrayBySortingArrayDescending:(NSArray*)array{
    NSSortDescriptor *sortByDescendingOrder = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    array = [array sortedArrayUsingDescriptors:@[sortByDescendingOrder]];
    return array;
}
//Done with method
-(NSArray*)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray*)array
{
    NSMutableArray *newArray = [array mutableCopy];
    //This creates a copy of my array
    [newArray exchangeObjectAtIndex:0 withObjectAtIndex:([newArray count]-1)];
    return newArray;
    
}
//Done with method
-(NSArray*)arrayByReversingArray:(NSArray*)array{
    return [[array reverseObjectEnumerator] allObjects];
}
//Done with method
-(NSString*)stringInBasicLeetFromString:(NSString*)string
{
    string = [string stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
    string = [string stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
    string = [string stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
    string = [string stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
    string = [string stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
    string = [string stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    
    return string;
}
//Done with method
-(NSArray*)splitArrayIntoNegativesAndPositives:(NSArray*)array
{
    NSMutableArray *newPositiveNumbers = [[NSMutableArray alloc]init];
    NSMutableArray *newNegativeNumbers = [[NSMutableArray alloc]init];
    NSMutableArray *combinedArrays = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [array count]; i++){
        if ([array[i] intValue] < 0){
            [newNegativeNumbers addObject:array[i]];
        }
        else
        {
            [newPositiveNumbers addObject:array[i]];
        }
    }
    [combinedArrays addObject:newNegativeNumbers];
    [combinedArrays addObject:newPositiveNumbers];
    return combinedArrays;
    //Reason why this wasn't working was because I was given an array of objects in the form of NSNumbers and not integers therefore I had to use intValue to convert them back to integers and then compare them and then break them down and then add them back in.
}
//Done with method
//REMEMBER WHEN YOU ARE COMPARING A PARTICULAR ARRAY THAT CONTAINS A BUNCH OF STRINGS, YOU ARE COMPARING THAT STRING AND NOT AN OBJECT
//THINK OF THAT OBJECT AS AN ENTIRE ENTITY AND WHEN COMPARING A PIECE OF THAT ENTITY, THINK OF STRING THEREFORE USE ISEQUALTOSTRING METHOD
-(NSArray*)namesOfHobbitsInDictionary:(NSDictionary*)dictionary
{
    NSMutableArray *hobbitnames = [[NSMutableArray alloc]init];
    for (NSString *key in dictionary) {
        if ([ dictionary[key] isEqualToString:@"hobbit"])
        {
            [hobbitnames addObject:key];
        }
    }
    return hobbitnames;
}
//Done with this method but go back to it and try to use predicate way to get this
-(NSArray*)stringsBeginningWithAInArray:(NSArray*)array
{
    NSMutableArray *newArrayWithA = [[NSMutableArray alloc] init];
    //NSString *newString;
    for (NSUInteger i = 0; i < [array count]; i++)
    {
        BOOL checkForA = [array[i] hasPrefix:@"a"] || [array[i] hasPrefix: @"A"];
        //checkForA = NO;
        //Never initialize a bool variable as NO again because then it will be a permanent NO and when it goes through the if statement
        //it will always be a NO instead of evaluating whether its a YES or NO!!!! Keep in mind
        //YOU DIDN'T ACCOUNT FOR THE CAPITAL A HENCE YOU WERE FAILING THE TEST SO NEXT MAKE SURE YOU KEEP ALL CONDITIONS IN MIND
        if(checkForA)
        {
            [newArrayWithA addObject:array[i]];
        }
    }
    return newArrayWithA;
}
//Done with this method
-(NSUInteger)sumOfIntegersInArray:(NSArray*)array
{
    NSUInteger sum =0; //Don't forget to ever initialize values hence why you were getting a crazy value before
    //WHAT HAPPENED HERE WAS WHEN YOU DIDN'T INITIALIZE THE VARIABLE SUM WITH A VALUE, IT TOOK IN WHATEVER IT WANTED AND BASICALLY RETURNED WHAT IT WANTED TO IN RETURN
    //NEXT TIME DON'T COPY CODE FROM OVERSTACKFLOW
    
    for(NSUInteger i =0; i < [array count]; i++)
    {
        
        sum += [array[i]intValue];
    }
    return sum;
    
}
//Done with this method, FINALLY!!!
//Remember you are comparing each string against each other so be careful when using the contains object vs  isEqualToString method
-(NSArray*)arrayByPluralizingStringsInArray: (NSArray*)array
{
    NSMutableArray *newArray = [array mutableCopy];
    //NSLog(@"%@\n\n\n\n\n\n\n", newArray);
    //This portion works and does contain a copy of all the elements from the previous array
    
    for (NSUInteger i = 0; i < [newArray count]; i++)
    {
        if ([newArray[i] isEqualToString:@"hand"]){
            [newArray replaceObjectAtIndex:i withObject: @"hands"];
            
        }
        else if ([newArray[i] isEqualToString: @"foot"]){
            [newArray replaceObjectAtIndex:i withObject: @"feet"];
        }
        else if ([newArray[i] isEqualToString: @"knee"]){
            [newArray replaceObjectAtIndex:i withObject: @"knees"];
        }
        else if ([newArray[i] isEqualToString: @"table"]){
            [newArray replaceObjectAtIndex:i withObject: @"tables"];
        }
        else if ([newArray[i] isEqualToString: @"box"]){
            [newArray replaceObjectAtIndex:i withObject: @"boxes"];
        }
        else if ([newArray[i] isEqualToString: @"ox"]){
            [newArray replaceObjectAtIndex:i withObject: @"oxen"];
        }
        else if ([newArray[i] isEqualToString: @"axle"]){
            [newArray replaceObjectAtIndex:i withObject: @"axles"];
        }
        else if ([newArray[i] isEqualToString: @"radius"]){
            [newArray replaceObjectAtIndex:i withObject: @"radii"];
        }
        else if ([newArray[i] isEqualToString: @"trivium"]){
            [newArray replaceObjectAtIndex:i withObject: @"trivia"];
        }
    }
    NSLog(@"%@\n\n\n\n\n\n\n", newArray);
    return newArray;
}
//Go back to this method
-(NSDictionary*)countsOfWordsInString:(NSString*)string
{
    //Make sure you go over object like NSNumber vs. string, two different things!!!
    NSArray *newKeys;
    //this will be my new set of keys that will store EACH OF THE WORDS
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
    //this will store the new keys and values in the new dictonary and what I will be returning at the end of the method
    NSArray *punctuations = @[ @".", @",", @"-", @";" ];
    NSString *withoutPunctuation = [string copy];
    withoutPunctuation=[withoutPunctuation lowercaseString];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    newKeys = [withoutPunctuation componentsSeparatedByString:@" "];
    
    //NSNumber *appearances; //this will be my set of values corresponding to the
    for (NSUInteger n = 0; n < [newKeys count]; n++)
    {
        NSUInteger p = 0;
        for (NSUInteger m = 0; m < [newKeys count]; m++) {
            BOOL isEqual = [newKeys[n] isEqualToString: newKeys[m]];
            if (isEqual)
            {
                p++;
                //NSLog(@"p equals: %lu", p);
            }
            newDictionary[newKeys[n]] = @(p); //shorthand version of converting the p from integer to object so as to be able to add to the newdictionary
        }
    }
    return newDictionary;
}

//Go back to this method!!!
//Go back and make sure to use the predicate way and use a for in loop
//A for-in loop can also work with other collections like arrays and not just dictionaries
-(NSDictionary*)songsGroupedByArtistFromArray:(NSArray*)array
{
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc]init]; //will add and return this
    //NSString* justArtist;
    //NSString* justSong;
    for(NSString *stuff in array)
    {
        NSArray *splitArray = [stuff componentsSeparatedByString:@" - "];
        NSString* justArtist = splitArray[0];
        NSString* justSong = splitArray[1];
        //newDictionary[justArtist]= justSong;
        
        if([[newDictionary allKeys] containsObject:justArtist] )
        {
            [newDictionary[justArtist] addObject: justSong];
        }
        else
        {
            newDictionary[justArtist] = [@[justSong]mutableCopy];
        }
        //NSLog(@"Dictionary contents equal: %@", newDictionary);
    }
//the key is being redefined so the key doesn't have a unique value anymore which is a problem!!! Need to figure out a way to add a value to a key that correctly corresponds to it! Especially if the key is already present in the dictionary
//    NSArray *newValues =[newDictionary[justArtist] sortedArrayUsingDescriptors:@[sortByAscendingOrder]];
//    newDictionary[value] = newValues;
   NSSortDescriptor *sortByAscendingOrder = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    for (NSString *value in newDictionary)
    {
       [newDictionary [value] sortUsingDescriptors:@[sortByAscendingOrder]];
//        NSArray *newValues =[[newDictionary allKeys] sortedArrayUsingDescriptors:@[sortByAscendingOrder]];
//        newDictionary[value] = newValues;
    }
    return [NSDictionary dictionaryWithDictionary: newDictionary];
}

@end;
