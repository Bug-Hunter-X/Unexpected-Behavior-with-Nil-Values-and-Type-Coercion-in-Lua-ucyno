# Lua Bug: Unexpected Behavior with Nil Values and Type Coercion

This repository demonstrates a common issue in Lua related to how nil values are handled during arithmetic and string operations.  The loose typing of Lua can lead to unexpected results when a function does not correctly handle a nil value passed as an argument.

The `bug.lua` file contains the problematic code, while `bugSolution.lua` shows a more robust and error-resistant solution.

## Problem

The primary issue is the implicit type coercion. When the function receives a nil value for 'a' and it is set to 0, it works for purely numeric calculations. However, if 'a' is anything else (a string or a table), it leads to unexpected results (string concatenation or errors).