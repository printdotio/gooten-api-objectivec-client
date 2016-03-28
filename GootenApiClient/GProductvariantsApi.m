#import "GProductvariantsApi.h"
#import "GQueryParamCollection.h"
#import "GProductVariantResponse.h"


@interface GProductvariantsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GProductvariantsApi

static GProductvariantsApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        GConfiguration *config = [GConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[GApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(GApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(GProductvariantsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GProductvariantsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GProductvariantsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GProductvariantsApi alloc] init];
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
    return [GApiClient requestQueueSize];
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
///  @param partnerBillingKey Partner billing key
///
///  @param all Whether or not to return all available printio products, or just ones in your recipe. Pass 'true' or 'false'.
///
///  @param languageCode Two-character language code, defaults to \"en\" (english)
///
///  @param currencyCode Three character currency code, defaults to \"USD\" (united states dollar)
///
///  @returns GProductVariantResponse*
///
-(NSNumber*) getProductvariantsWithCountryCode: (NSString*) countryCode
    productId: (NSString*) productId
    version: (NSNumber*) version
    source: (NSString*) source
    partnerBillingKey: (NSString*) partnerBillingKey
    all: (NSString*) all
    languageCode: (NSString*) languageCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(GProductVariantResponse* output, NSError* error)) handler {

    
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
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v/{version}/source/{source}/productvariants/"];

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
    if (partnerBillingKey != nil) {
        
        queryParams[@"partnerBillingKey"] = partnerBillingKey;
    }
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
    headerParams[@"Accept"] = [GApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [GApiClient selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"GProductVariantResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GProductVariantResponse*)data, error);
                           }
          ];
}



@end
