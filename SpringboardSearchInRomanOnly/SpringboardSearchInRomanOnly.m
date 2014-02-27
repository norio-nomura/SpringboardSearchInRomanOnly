//
//  SpringboardSearchInRomanOnly.m
//  SpringboardSearchInRomanOnly
//

@import Carbon;
@import ObjectiveC;

#import "SpringboardSearchInRomanOnly.h"

@implementation NSObject (SpringboardSearchInRomanOnly)

- (void)SpringboardSearchInRomanOnly_layout;
{
    [self SpringboardSearchInRomanOnly_layout];
    NSArray *inputSources = CFBridgingRelease(TISCreateASCIICapableInputSourceList());
    TISInputSourceRef inputSource = (__bridge TISInputSourceRef)([inputSources firstObject]);
    if (inputSource) {
        TISSelectInputSource(inputSource);
    }
}

@end

@implementation SpringboardSearchInRomanOnly

/*!
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void) load
{
    id plugin = [self sharedInstance];
    // ... do whatever
    if (plugin) {
        Class from = objc_getClass("Springboard");
        Class to = objc_getClass("NSObject");
        method_exchangeImplementations(class_getInstanceMethod(from, @selector(layout)),
                                       class_getInstanceMethod(to, @selector(SpringboardSearchInRomanOnly_layout)));
    }
}


/*!
 * @return the single static instance of the plugin object
 */
+ (instancetype) sharedInstance;
{
    static id plugin = nil;
    
    if (plugin == nil)
        plugin = [[self alloc] init];
    
    return plugin;
}

@end
