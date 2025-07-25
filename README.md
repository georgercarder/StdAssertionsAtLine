## StdAssertionsAtLine

### prints the line number where a forge assert fails


We've always wanted and needed this. This simple script preprocesses test files so that any failing assert will have the line number printed in error logs.

### usage

Install via `forge install georgercarder/StdAssertionsAtLine`

Import to forge test and just put empty string as first parameter

```
import {Test, console} from "forge-std/Test.sol"
import {StdAssertionsAtLine} from "lib/StdAssertionsAtLine/src/StdAssertionsAtLine.sol";

// ...

contract ExampleTest is Test {
        StdAssertionsAtLine atLine = new StdAssertionsAtLine();


        // ...

        function test_exampleTest() public {

            // ...

            atLine.assertEq("", thingA, thingB); 
        }

}

```

Then be sure that this is ran if test file is refreshed, preferably in some form of test run script  

```
./stdassert_at_line_preprocess.sh <TEST_FILEPATH> 
```


Enjoy!


Not audited. Use at your own risk.

Support my work on this library by donating ETH or other coins to

`0x1331DA733F329F7918e38Bc13148832D146e5adE`
