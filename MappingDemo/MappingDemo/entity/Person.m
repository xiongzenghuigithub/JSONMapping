

#import "Person.h"

@implementation Person

@synthesize pid;
@synthesize name;
@synthesize habits;

- (NSString *)description {
    NSMutableString * habitsStr = [NSMutableString string];
    for (int i = 0; i < self.habits.count; i++) {
        [habitsStr appendString:self.habits[i]];
    }
    return [NSString stringWithFormat:@"pid = %d, name = %@, habits = %@\n", pid, name, habitsStr];
}

@end
