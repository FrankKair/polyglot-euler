#import <Foundation/Foundation.h>

@interface Problem028 : NSObject
- (int) solve;
@end

@implementation Problem028
- (int) solve {
  int sum = 1;
  for (int i = 3; i < 1003; i += 2) {
    sum += 4 * i * i - (6 * (i - 1));
  }
  return sum;
}
@end

int main() {
  @autoreleasepool {
    Problem028 *p = [[Problem028 alloc] init];
    int result = [p solve];
    NSLog(@"%d", result);
  }
}
