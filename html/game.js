var counter_player = 0
var counter_computer = 0
var counter = 0
while (counter < 3) {
    var icons = ["🪨", "📄", "✂️"];
    function random(min, max) {
        return Math.floor(Math.random() * (max - min)) + min;
    }
    function anouncer(subject, object) {
        if (player >= 1 || player <= 3)
            return subject + " " + "choose" + " " + icons[object];
        else 
            return "You choose an invalid option"
    }

    let player  = 0
    let computer = 0
    player = prompt("Choose: Rock 1" + icons[0] + " Paper 2"  + icons[1] + " or Scissors 3" + icons[2] + "\n SCORE \n" + "You: " + "🟢".repeat(counter_player) + " Computer: " + "🔴".repeat(counter_computer))
    computer = random(1, 3)
    //alerts PLAYER and COMPUTER
    alert(anouncer("You", player - 1))
    alert(anouncer("Computer", computer - 1))
    //-----------WINNER-------------------
    if (player == 1 && computer == 3 || player == 2 && computer == 1 || player == 3 && computer == 2){
        alert("🫅🏾You win!")
        counter_player += 1
    }
    else if (player == computer){
        alert("😮‍💨It's a tie!")
    }
    else {
        alert("🤖Computer win. You lose!")
        counter_computer += 1
    }
    counter = Math.max(counter_player, counter_computer)
    if (counter == 3){
        if (counter_player > counter_computer){
            alert("🏆You win the game!")
        }
        else {
            alert("🤖Computer win the game!🌐")
        }
    }
}