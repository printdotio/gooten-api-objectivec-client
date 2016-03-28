#import "GProductBuildInfo.h"

@implementation GProductBuildInfo

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Id": @"_id", @"Description": @"_description", @"Type": @"type", @"ZIndex": @"zIndex", @"X1": @"x1", @"X2": @"x2", @"Y1": @"y1", @"Y2": @"y2", @"Color": @"color", @"BackgroundImageUrl": @"backgroundImageUrl", @"OverlayImageUrl": @"overlayImageUrl", @"FontName": @"fontName", @"FontSize": @"fontSize", @"FontHAlignment": @"fontHAlignment", @"FontVAlighment": @"fontVAlighment", @"DefaultText": @"defaultText" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
