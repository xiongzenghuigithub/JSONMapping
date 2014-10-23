
#import <Foundation/Foundation.h>

@interface MappingUtil : NSObject

/**
 *  获取某个Class对象的所有属性列表(属性名、属性类型)
 */
+ (NSDictionary *)getPropertiesOfClass:(Class)cls;

/**
 *  将字典的值填充到传入的实体对象
 */
+ (id)objectWithDictionary:(NSDictionary *)dict toObj:(id)obj;
+ (id)objectWithDictionary:(NSDictionary *)dict exclude:(NSArray *)ecludeKeys toObj:(id)obj;

/**
 *  将字典的值填充到传入的Class对象创建的对象
 */
+ (id)objectWithDictionary:(NSDictionary *)dict toClassObj:(Class)cls;
+ (id)objectWithDictionary:(NSDictionary *)dict excludeKeys:(NSArray *)keys toClassObj:(Class)cls;

/**
 *  将对象转换成字典
 */
+ (NSDictionary *)dictionaryWithObj:(id)obj;
+ (NSDictionary *)dictionaryWithObj:(id)obj includeKeys:(NSArray *)keys;
+ (NSMutableArray *)mutableDictionaryWithObj:(id)obj;
+ (NSMutableArray *)mutableDictionaryWithObj:(id)obj includeKeys:(NSArray *)keys;

/**
 *  有字典数组创建对象数组
 */
+ (NSArray *)arrayForClass:(Class)cls fromArrayDictionary:(NSDictionary *)dict;
+ (NSArray *)mutableArrayForClass:(Class)cls fromArrayDictionary:(NSDictionary *)dict;

@end
