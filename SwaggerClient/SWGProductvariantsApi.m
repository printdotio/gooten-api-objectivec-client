#import "SWGProductvariantsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGProductVariantResponse.h"


@interface SWGProductvariantsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGProductvariantsApi

static SWGProductvariantsApi* singletonAPI = nil;

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

+(SWGProductvariantsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGProductvariantsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGProductvariantsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGProductvariantsApi alloc] init];
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
/// Get a list of available product variations. Includes pricing information
/// Get a list of all available product variations, or if one passes in a specific product type id (productId), gets a list of available variations of a recipe product.
///  @param countryCode The country code the order would be shipped to. For example, 'US' or 'FR'
///
///  @param productId Recipe product ID, such as those returned from the /products service
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api, widget
///
///  @param all Whether or not to return all available printio products, or just ones in your recipe. Pass 'true' or 'false'.
///
///  @param languageCode Two-character language code, defaults to \"en\" (english)
///
///  @param currencyCode Three character currency code, defaults to \"USD\" (united states dollar)
///
///  @returns SWGProductVariantResponse*
///
-(NSNumber*) getProductvariantsWithCountryCode: (NSString*) countryCode
    productId: (NSString*) productId
    version: (NSNumber*) version
    source: (NSString*) source
    all: (NSString*) all
    languageCode: (NSString*) languageCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(SWGProductVariantResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'countryCode' is set
    if (countryCode == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `countryCode` when calling `getProductvariants`"];
    }
    
    // verify the required parameter 'productId' is set
    if (productId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `productId` when calling `getProductvariants`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `getProductvariants`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `getProductvariants`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/productvariants/v/{version}/source/{source}/"];

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
    if (productId != nil) {
        
        queryParams[@"productId"] = productId;
    }
    if (all != nil) {
        
        queryParams[@"all"] = all;
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
                              responseType: @"SWGProductVariantResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGProductVariantResponse*)data, error);
                           }
          ];
}



@end
