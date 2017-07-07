#include <stdio.h>

void selection_sort(int A[], int n) {
	for (int i = 0; i < n-1; i++) {
		int iMin = i;
		for (int j = i+1; j < n; j++) {
			if (A[j] < A[iMin]) {
				iMin = j;
			}
		}
		int temp = A[i];
		A[i] = A[iMin];
		A[iMin] = temp;
	}
}

// Example
int main(int argc, char const *argv[])
{
	int A[] = {2, 7, 4, 1, 5, 3};
	int size = (int) sizeof A / sizeof *A;
	selection_sort(A, size);

	// Prints elements
	for (int i = 0; i < size; i++) {
		printf("%d\n", A[i]);
	}
	return 0;
}