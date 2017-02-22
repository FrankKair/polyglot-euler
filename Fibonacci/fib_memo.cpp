#include <iostream>
#include <map>
#include <time.h>
using namespace std;

int fibonacci_memo(int num);

int fibonacci_memo(int num) {
	static map<int, int> cache;
	cache.insert(pair<int,int>(0,1));
	cache.insert(pair<int,int>(1,1));
	auto found = cache.find(num);
	if (found != end(cache)) {
		return found->second;
	}
	int result = fibonacci_memo(num - 1) + fibonacci_memo(num - 2);
	cache[num] = result;
	return result;
}

int main() {
	clock_t tStart = clock();
	int num;
	cout << "i: ";
	cin >> num;
	int res = fibonacci_memo(num);
	cout << num << "th fibonacci number: " << res << endl;
	printf("Time taken: %.2fs\n", (double)(clock() - tStart)/CLOCKS_PER_SEC);
}
