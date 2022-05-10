///@arg val1
///@arg val2
///@arg amount
function approach() {
    var val1 = argument[0];
    var val2 = argument[1];
    var amount = argument[2];
    
    if(val1 < val2) {
        val1 += amount;
        if(val1 > val2)
            return val2;
    } else if (val1 > val2) {
        val1 -= amount;
        if(val1 < val2)
            return val2;
    } else {
        return val1;
    }
    return val1;
}
