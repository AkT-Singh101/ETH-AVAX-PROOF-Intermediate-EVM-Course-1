pragma solidity ^0.8.0;

contract DivisionContract {
    uint public divident;
    uint public divisor;
    uint public result;

    function set(uint D,uint d) public {
        require(D >= 0, "Value must not be negative.");
        assert(D<1000 && d<100);
        if (d <= 0) {
            revert("Divisor cannot be 0 or negative");
        }
        divident=D;
        divisor=d;
        result=divident/divisor;
    }
}
