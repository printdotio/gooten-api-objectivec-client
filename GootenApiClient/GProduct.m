#import "GProduct.h"

@implementation GProduct

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Id": @"_id", @"UId": @"uId", @"Name": @"name", @"ShortDescription": @"shortDescription", @"HasAvailableProductVariants": @"hasAvailableProductVariants", @"HasProductTemplates": @"hasProductTemplates", @"FeaturedIndex": @"featuredIndex", @"MaxZoom": @"maxZoom", @"RetailPrice": @"retailPrice", @"Info": @"info", @"ProductImage": @"productImage", @"PriceInfo": @"priceInfo", @"PartnerPriceInfo": @"partnerPriceInfo", @"Categories": @"categories" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"partnerPriceInfo", ];

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
