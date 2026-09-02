# Observer
Unit testing for Datapacks.

## Overview
Currently this project is in early alpha. It is based on the unit testing functionality from observer, although has been moved in to its own project for further love and attention.

The current syntax of Observer is inspired by [RSpec](https://rspec.info/).

If you have multiple tests you would like to run at once, place them in functions,
then add those functions to the tag `#observer:api`. Each of the functions must also
call `observer:api/perform` themselves.

When you run `observer:api/start`, it will run all the tests at once, and number them.

## API
### Perform
Checks that the `receives` tag matches the `expects` tag.

A test should first run the function needing to be tested, and set the output
of the function into the `receives` tag.

**Note** The test suite does *not* follow the same syntax as the other functions.

**Function:** `observer:api/perform`  
**Storage:** `observer:test/it`  
**Expects:**
- `describes` -- the name of the test, as a string
- `expects` -- the expected NBT data
- `receives` -- the data received from the function output
**Returns:** The function will tellraw to the executing player the results.

Example:
```
/function example:return_true
/data modify storage observer:test/it describes set value "always returns true"
/data modify storage observer:test/it expects set value true
/data modify storage observer:test/it receives set from storage example:return_true output
/function observer:api/perform
---
*1 Passed: "always returns true"*
```

### Start
Runs the tests as listed in `#observer:api`.

Running start with the tag `observer.dev` will run observer's internal tests.

**Function:** `observer:api/start`  
**Expects:** No value expected  
**Returns:** No value returned

Example:
```
/function observer:api/start
---
*1 Passed: "always returns true"*
*2 Passed: "always returns false"*
*3 Failed: "should returns true"*
  - Expected: true
  - Received: false
```