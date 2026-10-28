%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    NSLog(@"[MyTweak] Hello from iOS 15 tweak!");
}
%end