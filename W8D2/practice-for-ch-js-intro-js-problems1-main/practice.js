function madLib(verb, adj, noun) {
    String.prototype.toUpperCase(verb);
    String.prototype.toUpperCase(adj);
    String.prototype.toUpperCase(noun);
    return "We shall " + verb + " " + "the " + adj + " " + noun
}

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz(array) {
    var arr = new Array();
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 == 0 ? 1 : 0) ^ (array[i] % 5 == 0 ? 1 : 0)) {
            arr.push(array[i]);
        }
    }
    return arr;
}

function isPrime(number) {
    for (let i = 2; i < number; i++) {
        if (number % i == 0) {
            return false
        }
    }
    return true
}

function sumOfNPrimes(n) {
    var sum = 0
    for (let i = 2, x = 0; x < n; i++) {
        if (isPrime(i)) {
            sum += i;
            x++;
        }
    }
    return sum;
}