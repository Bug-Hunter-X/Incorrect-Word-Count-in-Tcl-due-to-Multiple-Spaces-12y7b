# Incorrect Word Count in Tcl

This repository demonstrates a common error in Tcl when using the `split` command to count words. The `split` command, when used with a space delimiter, does not correctly handle multiple consecutive spaces, resulting in an incorrect word count.

The `bug.tcl` file contains the buggy code, and the `bugSolution.tcl` file provides a corrected version that addresses this issue.

## Bug

The core issue lies in how the `split` command handles multiple consecutive spaces. It treats each space as a separate delimiter, even if they are adjacent. This leads to extra empty strings being added to the list of words, resulting in an inaccurate word count.

## Solution

The solution uses `regexp` to split the string based on one or more spaces, correctly handling multiple consecutive spaces.