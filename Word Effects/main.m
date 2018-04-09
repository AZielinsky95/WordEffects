//
//  main.m
//  Word Effects
//
//  Created by Alejandro Zielinsky on 2018-04-09.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    
    while(true)
    {
        //Take a number from user 1- 6
        char numchoice[3];
        printf("Input a number 1 - 6: ");
        // limit input to max 255 character
        fgets(numchoice,3,stdin);
    
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 character
        fgets(inputChars,255,stdin);
        
        // convert char array to an NSString object
        NSString *inputNum = [NSString stringWithUTF8String:numchoice];
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
        NSInteger userNum = [inputNum intValue];
        
        switch (userNum) {
            case 1:
                NSLog(@"%@", inputString.uppercaseString);
                break;
            case 2:
                NSLog(@"%@", inputString.lowercaseString);
                break;
            case 3:
            {
              NSInteger numberizedString = [inputString intValue];
                if(numberizedString == 0)
                {
                    NSLog(@"No numbers were found in your string");
                }
                else
                {
                    NSLog(@"%ld",numberizedString);
                }
            }
                break;
            case 4:
            {
               NSString *canadian = @"eh";
                NSString *result = [inputString stringByAppendingString:canadian];
                NSLog(@"%@", result);
            }
                break;
            case 5:
            {
                if([inputString hasSuffix:@"?"])
                {
                    NSLog(@"I don't know");
                }
                else if([inputString hasSuffix:@"!"])
                {
                    NSLog(@"Whoa, calm down!");
                }
            }
                break;
            case 6:
            {
                NSString * newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                
                NSLog(@"%@",newString);
            }
                break;
            default:
                break;
        }
        
    
    }
        
    return 0;
}
