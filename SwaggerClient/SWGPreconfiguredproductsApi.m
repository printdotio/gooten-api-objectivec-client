#import "SWGPreconfiguredproductsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGPreconfiguredProductInsert.h"
#import "SWGPreconfiguredProductsInsertResponse.h"
#import "SWGPreconfiguredProductsResponse.h"


@interface SWGPreconfiguredproductsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGPreconfiguredproductsApi

static SWGPreconfiguredproductsApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGPreconfiguredproductsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPreconfiguredproductsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGPreconfiguredproductsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPreconfiguredproductsApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Insert a preconfigured product
/// Insert a preconfigured product into your recipe.
///  @param preconfiguredProductInsert The product to be inserted
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @returns SWGPreconfiguredProductsInsertResponse*
///
-(NSNumber*) createPreconfiguredproductsWithPreconfiguredProductInsert: (SWGPreconfiguredProductInsert*) preconfiguredProductInsert
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'preconfiguredProductInsert' is set
    if (preconfiguredProductInsert == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `preconfiguredProductInsert` when calling `createPreconfiguredproducts`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `createPreconfiguredproducts`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `createPreconfiguredproducts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/preconfiguredproducts/v/{version}/source/{source}/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = preconfiguredProductInsert;
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPreconfiguredProductsInsertResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGPreconfiguredProductsInsertResponse*)data, error);
                           }
          ];
}

///
/// Delete a preconfigured product
/// Delete a preconfigured product from your recipe.
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @param sku The preconfigured product's sku.
///
///  @returns SWGPreconfiguredProductsInsertResponse*
///
-(NSNumber*) deletePreconfiguredproductsWithVersion: (NSNumber*) version
    source: (NSString*) source
    sku: (NSString*) sku
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `deletePreconfiguredproducts`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `deletePreconfiguredproducts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/preconfiguredproducts/v/{version}/source/{source}/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sku != nil) {
        
        queryParams[@"sku"] = sku;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPreconfiguredProductsInsertResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGPreconfiguredProductsInsertResponse*)data, error);
                           }
          ];
}

///
/// Get a list of your preconfigured products
/// Get a list of your preconfigured products. The products returned are entirely specific to your recipe.
///  @param countryCode The country code where it would be shipped to. For example, 'US' or 'CA'
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @param languageCode Two-character language code, defaults to \"en\" (english)
///
///  @param currencyCode Three character currency code, defaults to \"USD\" (united states dollar)
///
///  @returns SWGPreconfiguredProductsResponse*
///
-(NSNumber*) getPreconfiguredproductsWithCountryCode: (NSString*) countryCode
    version: (NSNumber*) version
    source: (NSString*) source
    languageCode: (NSString*) languageCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(SWGPreconfiguredProductsResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'countryCode' is set
    if (countryCode == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `countryCode` when calling `getPreconfiguredproducts`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `getPreconfiguredproducts`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `getPreconfiguredproducts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/preconfiguredproducts/v/{version}/source/{source}/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (countryCode != nil) {
        
        queryParams[@"countryCode"] = countryCode;
    }
    if (languageCode != nil) {
        
        queryParams[@"languageCode"] = languageCode;
    }
    if (currencyCode != nil) {
        
        queryParams[@"currencyCode"] = currencyCode;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPreconfiguredProductsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGPreconfiguredProductsResponse*)data, error);
                           }
          ];
}

///
/// Update a preconfigured product
/// Update a preconfigured product into your recipe.
///  @param preconfiguredProductInsert The product to be inserted
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @returns SWGPreconfiguredProductsInsertResponse*
///
-(NSNumber*) updatePreconfiguredproductsWithPreconfiguredProductInsert: (SWGPreconfiguredProductInsert*) preconfiguredProductInsert
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(SWGPreconfiguredProductsInsertResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'preconfiguredProductInsert' is set
    if (preconfiguredProductInsert == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `preconfiguredProductInsert` when calling `updatePreconfiguredproducts`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `updatePreconfiguredproducts`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `updatePreconfiguredproducts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/preconfiguredproducts/v/{version}/source/{source}/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = preconfiguredProductInsert;
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPreconfiguredProductsInsertResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGPreconfiguredProductsInsertResponse*)data, error);
                           }
          ];
}



@end
