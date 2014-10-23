

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, assign) int pid;
@property(nonatomic, copy) NSString * name;
@property(nonatomic, copy) NSArray * habits;
@property(nonatomic, strong)NSDictionary *dict;
@property(nonatomic, strong) id obj;

@end
