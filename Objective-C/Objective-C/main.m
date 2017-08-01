
#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Organization.h"

#define SALARY 1000
#define TOLERANCE 200





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Employee * temp = [[Employee alloc] initWithFirstName:@"Lexa" lastNameInit:@"Koval" initSalary: SALARY];
        Organization* org = [[Organization alloc] initWithName:@"Inter"];
        [org addEmployee:temp];
        Employee*  testAdding = [org employeeWithLowestSalary];
        
        NSLog(@"Test adding employee to organization %@ %ld", testAdding.fullName, testAdding.salary);
        NSLog(@"\n ///////////////////////");
        
        for(int i = 0; i < 100; i++) {
            NSString* name = [@(i).stringValue stringByAppendingString: @"vasya "];
            NSString* fullName = [name stringByAppendingString:@"pupkin"];
            [org addEmployeeWithName:fullName];
        }
        Employee* empl = [org employeeWithLowestSalary];
        
        NSLog(@"Employee with the lowest salary %@ %ld", empl.fullName, empl.salary);
        NSLog(@"\n ///////////////////////");
        NSInteger avg = [org calculateAverageSalary];
        NSLog(@"Average salary in organization: %ld",  avg);
        NSLog(@"\n ///////////////////////");
        
        NSArray<Employee*>* emplArray = [org employeesWithSalary:SALARY tolerance:TOLERANCE];
        
        for(int i = 0; i < emplArray.count; i++){
            NSLog(@"Employee %@ %ld with salary  between %d AND %d ", emplArray[i].fullName, emplArray[i].salary, SALARY, TOLERANCE);
        }
        
        
    }
    return 0;
}




		
