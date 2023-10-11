function titleize(array, callback) {
    let mapped = array.map((element) => {return `Mx. ${element} Jingleheimer Schmidt`});
    mapped.forEach(callback);
}
function printCallback(ele) {
    console.log(ele);
}

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes BRR!`);
}

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {

}

let leo = new Elephant('leo',12,['play','cry'])
leo.trumpet()

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];

function paradeHelper(elephant) {
    console.log(`${elephant.name} is smiling!`)
}

herd.forEach(paradeHelper)

function dinerBreakfast() {
    let foodOrder = 'scrambled eggs and bacon';
    return function(order) {
        console.log(`I'd like ${foodOrder} and ${order} please`);
        foodOrder = `${foodOrder} and ${order}`;
    }
}
let bfastOrder = dinerBreakfast();
bfastOrder('pancakes')
bfastOrder('grits')
bfastOrder('waffles and chili and chips and chocolate and ice cream and dessert')