
#import "GProductsApi.h"
#import "GQueryParamCollection.h"
#import "GProductList.h"



@interface GProductsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GProductsApi

static GProductsApi* singletonAPI = nil;

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

+(GProductsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GProductsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GProductsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GProductsApi alloc] init];
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
/// Get a list of products
/// Get a list of products. The products returned may have variants. Products returned are only those within the overall recipe. All images returned from the service are dynamically resizable by adding width and height querystrings.
///  @param countryCode The country code where it would be shipped to. For example, 'US' or 'CA'
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @param partnerBillingKey Partner billing key
///
///  @param all Whether or not to return all available printio products, or just ones in your recipe. Pass 'true' or 'false'.
///
///  @param languageCode Two-character language code, defaults to \"en\" (english)
///
///  @param currencyCode Three character currency code, defaults to \"USD\" (united states dollar)
///
///  @returns GProductList*
///
-(NSNumber*) getProductsWithCountryCode: (NSString*) countryCode
    version: (NSNumber*) version
    source: (NSString*) source
    partnerBillingKey: (NSString*) partnerBillingKey
    all: (NSString*) all
    languageCode: (NSString*) languageCode
    currencyCode: (NSString*) currencyCode
    completionHandler: (void (^)(GProductList* output, NSError* error)) handler {

    
    // verify the required parameter 'countryCode' is set
    if (countryCode == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `countryCode` when calling `getProducts`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `getProducts`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `getProducts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v/{version}/source/{source}/products/"];

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
                              responseType: @"GProductList*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GProductList*)data, error);
                           }
          ];
}





@end
