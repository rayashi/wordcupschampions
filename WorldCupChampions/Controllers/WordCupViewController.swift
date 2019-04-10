

import UIKit

class WordCupViewController: UIViewController {
    
    var worldCup: WorldCup! = nil
    
    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivAway: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbHome: UILabel!
    @IBOutlet weak var lbAway: UILabel!
    
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
