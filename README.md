# ActionScript Type Assertion Bug

This repository demonstrates a common ActionScript bug involving incorrect type assertions when handling data loaded from an external source (e.g., a network request). The bug occurs because the code assumes the loaded data is always an array, without checking its actual type. This can lead to runtime errors.

The `bug.as` file contains the buggy code. The `bugSolution.as` file shows the corrected code with proper type checking and error handling.

## Bug Description

The `handleComplete` function attempts to cast the loaded content directly to an `Array`. If the loaded data is not an array, a runtime error occurs when attempting to iterate over it. The code also assumes that each element in the array has a property `someProperty`, which may not be true.

## Solution

The solution adds type checking to ensure the data is an array before iterating. It also includes error handling to gracefully manage cases where the data is not an array or doesn't have the expected properties.