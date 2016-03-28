#
# Be sure to run `pod lib lint GootenApiClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "GootenApiClient"
    s.version          = "1.0.0"

    s.summary          = "Gooten API"
    s.description      = <<-DESC
                         An overview of the various API methods that Gooten offers, including examples of each.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'
    
    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "MIT"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Gooten" => "hello@gooten.com" }

    s.source_files = 'GootenApiClient/**/*'
    s.public_header_files = 'GootenApiClient/**/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
end

