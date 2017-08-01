//
//  Organization.h
//  Objective-C
//
//  Created by New user on 01.08.17.
//  Copyright © 2017 New user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
@interface Organization : NSObject


@property (nonatomic,readwrite) NSArray<Employee *> *empls;
@property (nonatomic,readonly) NSString *name;

-(id) initWithName: (NSString *) name;
-(void) addEmployeeWithName: (NSString *) name;
-(void) addEmployee: (Employee *) employee;
-(NSInteger) calculateAverageSalary;
-(Employee *) employeeWithLowestSalary;
-(NSArray *) employeesWithSalary: (int) salary tolerance: (int) tolerance;

@end
