#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSString *output =[[NSString alloc] init];
    /*NSNumber *zer = [[NSNumber alloc] initWithInteger:0];
    NSNumber *one = [[NSNumber alloc] initWithInteger:0];
    NSNumber *two = [[NSNumber alloc] initWithInteger:0];
    NSNumber *three = [[NSNumber alloc] initWithInteger:0];*/
    NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:numbersArray];
    
    int size = (int)[numbersArray count];
    
    if (size == 0) {
        output = @"";
        return output;
    }
    
    for (int i=0; i<size; i++) {

        if ([[numbersArray objectAtIndex:i]intValue] > 255) {
            output = @"The numbers in the input array can be in the range from 0 to 255.";
            return output;
        }
        
        if ([[numbersArray objectAtIndex:i]intValue] < 0) {
            output = @"Negative numbers are not valid for input.";
            return output;
        }
        //[arr objectAtIndex:i] = [numbersArray objectAtIndex:i];
        
    }
    for (int i = size; i<4; i++) {
        [arr addObject:@"0"];
    }
    
    output = [NSString stringWithFormat:@"%d.%d.%d.%d",[arr[0] intValue], [arr[1] intValue], [arr[2] intValue], [arr[3] intValue]];
    return output;
 
}

@end
