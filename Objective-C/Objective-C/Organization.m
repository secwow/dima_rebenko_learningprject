
#import "Organization.h"
#define LOWER_BOUND 10
#define UPPER_BOUND 500

@implementation Organization





- (id)initWithName:(NSString *)orgName
{
    self = [super init];
    if (self)
    {
        _name = orgName;
        _empls = [[NSArray alloc] init];
    }
    return self;
}

- (void) addEmployeeWithName: (NSString *) name
{
    NSInteger randomSalary = (LOWER_BOUND + arc4random() % (UPPER_BOUND - LOWER_BOUND)) * 10;
    NSArray <NSString *> *fullName = [name componentsSeparatedByString: @" "];
    
    if(fullName.count  < 2){
        @throw NSInvalidArgumentException;
    }
    
    Employee *temp = [[Employee alloc] initWithFirstName : fullName[1] lastNameInit : fullName[0] initSalary: randomSalary];
    [self addEmployee:temp];
}

-(void) addEmployee: (Employee *) employee
{
    _empls = [_empls arrayByAddingObject: employee];
}

-(NSInteger) calculateAverageSalary
{
    NSInteger avarageSalary=0;
    for(int i =0; i < _empls.count; i++){
        avarageSalary += _empls[i].salary;
    }
    return avarageSalary / _empls.count;
}

-(Employee *) employeeWithLowestSalary
{
    NSInteger minSalary = INT_MAX;
    Employee *result=nil;
    for(int i=0; i < _empls.count; i++){
        if(_empls[i].salary < minSalary){
            minSalary = _empls[i].salary;
        }
    }
    for(int i=0; i < _empls.count; i++){
        if(_empls[i].salary == minSalary){
            result = _empls[i];
            break;
        }
    }
    return result;
}

-(NSArray*)employeesWithSalary: (int) salary tolerance: (int) tolerance
{
    NSMutableArray <Employee*>* resultEmpls = [[NSMutableArray alloc] init];
    for(int i = 0; i < _empls.count; i++){
        if(_empls[i].salary - tolerance <= salary &&
           _empls[i].salary + tolerance >= salary ){
            [resultEmpls addObject:_empls[i]];
        }
    }
    return  resultEmpls.copy;
}

@end

