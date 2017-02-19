#include <iostream>
#include <map>
#include <time.h>
using namespace std;

int fibonacci_memo(int num);

int fibonacci_memo(int num) {
	static std::map<int, int> cache;
	cache.insert(std::pair<int,int>(0,1));
	cache.insert(std::pair<int,int>(1,1));
	auto found = cache.find(num);
	if (found != std::end(cache)) {
		return found->second;
	}
	int result = fibonacci_memo(num - 1) + fibonacci_memo(num - 2);
	cache[num] = result;
	return result;
}

int main() {
	clock_t tStart = clock();
	int num;
	std::cout << "i: ";
	std::cin >> num;
	int res = fibonacci_memo(num);
	std::cout << num << "th fibonacci number: " << res << std::endl;
	printf("Time taken: %.2fs\n", (double)(clock() - tStart)/CLOCKS_PER_SEC);
}
