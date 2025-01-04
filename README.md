# Unhandled Empty Array Access in Dart Asynchronous API Call

This repository demonstrates a common error in Dart code that handles asynchronous API calls. The code fetches data from an API and assumes the response will always contain at least one element in a JSON array. If the API returns an empty array, the code throws an IndexOutOfBoundsException.

## Bug Description
The `fetchData` function attempts to access the first element ( `jsonData[0]` ) of a JSON array returned from an API call.  If the array is empty, this will throw an exception, leading to unexpected program behavior.

## Solution
The solution involves adding a check to ensure the array is not empty before attempting to access its elements.

## How to Reproduce
1. Clone this repository.
2. Run `fetchData` function.  Observe the behavior when the API returns a non-empty array versus an empty array. 
