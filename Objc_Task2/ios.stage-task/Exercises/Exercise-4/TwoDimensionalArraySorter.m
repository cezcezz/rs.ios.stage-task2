#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    int size = (int)array.count;
    NSMutableArray *arr =[[NSMutableArray alloc]initWithArray:array];
    
    NSMutableArray *outStr=[[NSMutableArray alloc] init];
    NSMutableArray *outInt=[[NSMutableArray alloc] init];
   // NSMutableArray *outAll=@[@[outInt],@[outStr]];
    
    if (array == nil || array.count == 0 || [array[0]isKindOfClass:[NSNumber class]] || [array[0]isKindOfClass:[NSString class]] )return @[];
   
    int usl=0;//проверка если только цифры то 1 если только буквы 2 если смесь то 3 если пустой то так же как и 3
    
    for(int i =0; i<size; i++)
        {
            int sizeARR =(int)array[i].count;
            
           // int usl=0;//проверка если только цифры то 1 если только буквы 2 если смесь то 3 если пустой то так же как и 3
            for (int j=0; j< sizeARR;j++) {
                
                if ([array[i][j] isKindOfClass:[NSNumber class]]) {
                    usl = 1;
                }
                if ([array[i][j] isKindOfClass:[NSString class]]) {
                    usl =2;
                }
            
            }
            if (usl==1) {
               [outInt addObjectsFromArray:arr[i]];
            }
            if (usl==2) {
               [outStr addObjectsFromArray:arr[i]];
            }
        }
        
    [outInt sortUsingDescriptors:
            [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
    
    [outStr sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    if (usl==1) {
        return outInt;;
    }
    if (usl==2) {
        return outStr;
    }
    
    
    return @[];
}

@end
