debugger

function setTimeout() {
    debugger
    global.setTimeout(() => console.log('It has been 10 seconds'), 10000)
}

setTimeout()

function hammerTime(time) {
    window.setTimeout(alert(`${time} is hammertime!`), 5000)
}

const readline = require('readline');
const reader = readline.createInterface({ 
    input: process.stdin,
    output: process.stdout
})
