

import Foundation

class WorldCupsManager {
    
    static var shared: WorldCupsManager = WorldCupsManager()
    var wordsCups: [WorldCup]
    
    private init() {
        let fileURL = Bundle.main.url(forResource: "winners", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        wordsCups = try! JSONDecoder().decode([WorldCup].self, from: jsonData)
    }
}

