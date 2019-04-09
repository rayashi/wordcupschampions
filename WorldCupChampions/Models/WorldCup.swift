
import Foundation

struct WorldCup: Codable{
    let year: Int
    let country: String
    var winner: String
    let vice: String
    let winnerScore: String
    let matches: [Match]
}

struct Match: Codable {
    let stage: String
    let games: [Game]
}

struct Game: Codable {
    let home: String
    let away: String
    let score: String
    let date: String
    
}
