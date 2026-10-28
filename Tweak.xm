%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    // 設定が有効な場合だけログを出す
    BOOL enabled = [[NSUserDefaults standardUserDefaults] boolForKey:@"com.example.mytweak.enabled"];
    if (enabled) {
        NSLog(@"[MyTweak] SpringBoard 起動完了 – 有効化されています");
        // 例: バナー表示 (iOS 15 でも動作する簡易トースト)
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"MyTweak"
                                                                       message:@"Tweak が有効です"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [[%c(UIApplication) sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:^{
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [alert dismissViewControllerAnimated:YES completion:nil];
            });
        }];
    }
}

%end