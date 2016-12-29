//
//  main.m
//  objc
//
//  Created by rory.zhang on 16/12/23.
//  Copyright © 2016年 rory.zhang. All rights reserved.
//

#include <stdio.h>
#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car : NSObject
@property NSString *name;
@property int age;
@property float score;
-(void)display;
@end

@implementation Car

-(void)display {
    NSLog(@"Car name: %@; age: %d; score: %f", self.name, self.age, self.score);
}

@end

// define struct Student
struct Student {
    char *name;
    int age;
    float score;
};

void display(struct Student student);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("what dog & cat num?");
        int dogNums=5, catNums=5;
        //scanf("%d %d", &dogNums, &catNums);
        printf("you have %d dogs, %d cats.\n", dogNums, catNums);
        int dogResult = dogNums ++;
        int catResult = ++ catNums;
        printf("you have %d dogs, dog result: %d, %d cats, cat result %d.\n",
               dogNums, dogResult, catNums, catResult);
        
        NSLog(@"hello ===========================================================");
        int i = 100;
        float f = 4345.34;
        char *c = "Object-C";
        NSString *str = @"rory.zhang";
        NSLog(@"Hello, I am %@! I was learning %s. i is %d and f is %f", str, c, i, f);
        
        NSLog(@"student ===========================================================");
        struct Student student;
        student.name = "rory.zhang";
        student.age = 18;
        student.score = 98.5;
        display(student);
        
        NSLog(@"car ===========================================================");
        Car *car = [[Car alloc] init];
        car.name = @"Kuyer";
        car.age = 21;
        car.score = 85.55;
        [car display];
        
        NSLog(@"person ===========================================================");
        Person *person = [[Person alloc] init];
        person.name = @"coolrl";
        [person hello];
    }
    return 0;
}

void display(struct Student student) {
    printf("Student name: %s; age: %d; score: %f\n", student.name, student.age, student.score);
}
