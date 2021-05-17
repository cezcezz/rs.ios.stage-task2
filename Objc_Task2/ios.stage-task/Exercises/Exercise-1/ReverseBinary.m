#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    UInt8 *arr[8];//={0,0,0,0,0,0,0,0};
    UInt8 sum=0;
    UInt8 temp=n;
    
    for (int i=0; i<8; i++) {
        //sum=+(UInt8)pow((UInt8)arr[i],(UInt8)i);
        if (temp==0) {
            arr[i]=0;
        }
        arr[i]=temp%2;
        temp=temp/2;
        
    }
    
    for (int i=7; i>=0; i--) {
        
    sum+= (UInt8)pow(2,(UInt8)i)*(UInt8)arr[7-i];
    }
    
    
    return sum;
}
