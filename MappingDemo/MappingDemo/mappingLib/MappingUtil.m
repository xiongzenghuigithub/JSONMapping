
#import "MappingUtil.h"
#import <objc/runtime.h>

@implementation MappingUtil

static const char * getPropertyType(objc_property_t property) {
    char * type = "";
    const char * attributs = property_getAttributes(property);//Ti/T@"NSString"  C  N  V属性名
    char attributsCopy[1 + strlen(attributs)];
    strcpy(attributsCopy, attributs);
    char * state = attributsCopy , * attribute;
    while ((attribute = strsep(&state, ",")) != NULL) {
        printf("\n---%s", attribute);
        if (attribute[0] == 'T' && attribute[1] != '@') {
            //属性类型 == 基本数据类型

        }else if (attribute[0] == 'T' && attribute[1] == '@' && strlen(attribute) == 2) {
            //属性类型 == id
            
        }else if (attribute[0] == 'T' && attribute[1] == '@') {
            //属性类型 == NSArray , NSDictionary .. 或者 自定义类型
        }
    }
    return type;
}

+ (NSDictionary *)getPropertiesOfClass:(Class)cls{
    if (cls == nil) {
        return nil;
    }
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    unsigned int count;
    objc_property_t * propertyArr = class_copyPropertyList(cls, &count);
    for (int i = 0; i < count; i++) {
        objc_property_t property = propertyArr[i];
        const char * propertyName = property_getName(property);
        if (propertyName != NULL) {
            const char * propertyType = getPropertyType(property);
            NSString *name = [NSString stringWithUTF8String:propertyName];
//            NSString *type = [NSString stringWithUTF8String:propertyType];
            DLOG(@"propertyName = %@ \n" ,name);
//            [dict setObject:type forKey:name];
        }
    }
    return dict;
}

@end
