import UIKit

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins coinsRequested: Int) -> Int {
        let coinsToVend = min(coinsRequested, coinsInBank)
        coinsInBank -= coinsRequested
        return coinsToVend
    }
    static func recevive(coins: Int){
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int){
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int){
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit{
        Bank.recevive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins.")
print("There are now \(Bank.coinsInBank) coins in the Bank.")

playerOne!.win(coins: 2_000)
print("\nPlayerOne won 2000 coins and now has \(playerOne!.coinsInPurse) coins.")
print("Now the bank has \(Bank.coinsInBank) coins.")

playerOne = nil
print("\nPlayer has left the game.")
print("The bank has received the coins back and now has \(Bank.coinsInBank) coins")
