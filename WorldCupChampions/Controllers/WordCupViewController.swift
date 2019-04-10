

import UIKit

class WordCupViewController: UIViewController {
    
    var worldCup: WorldCup! = nil
    
    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivAway: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbHome: UILabel!
    @IBOutlet weak var lbAway: UILabel!
    @IBOutlet weak var tvGames: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Copa do Mundo \(worldCup.year)"
        ivHome.image = UIImage(named: worldCup.winner)
        ivAway.image = UIImage(named: worldCup.vice)
        lbScore.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        lbHome.text = worldCup.winner
        lbAway.text = worldCup.vice
    }

}

extension WordCupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCup.matches[section].games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvGames.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GameTableViewCell
        let game = worldCup.matches[indexPath.section].games[indexPath.row]
        cell.prepare(game: game)
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return worldCup.matches[section].stage
    }
}

extension WordCupViewController: UITableViewDelegate {
    
}
