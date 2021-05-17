#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int size = (int)array.count;
    int count=0;
    int temp=0;
    
    for (int i=0; i<size; i++) {
        for (int j=0; j<size; j++) {
            
            temp = ([[array objectAtIndex:j] intValue] - [[array objectAtIndex:i] intValue]);
            
            if ( temp == [number intValue]) {
                count+=1;
            }
        }
    }
    
    return count;
}

@end
