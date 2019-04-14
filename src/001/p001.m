#import <Foundation/Foundation.h>

@interface Problem001 : NSObject
- (int) solve;
@end

@implementation Problem001
- (int) solve {
  int sum = 0;
  for (int i = 1; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}
@end

int main() {
  @autoreleasepool {
    Problem001 *p = [[Problem001 alloc] init];
    int result = [p solve];
    NSLog(@"%d", result);
  }
}
