//
//  WorldCupTableViewCell.swift
//  WorldCupChampions
//
//  Created by Humberto Rayashi on 09/04/19.
//  Copyright © 2019 Humberto Rayashi. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var ivWinnerFlag: UIImageView!
    @IBOutlet weak var ivViceFlag: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with worldCup: WorldCup) {
        lbYear.text = String(worldCup.year)
        lbCountry.text = worldCup.country
        ivWinnerFlag.image = UIImage(imageLiteralResourceName: worldCup.winner)
        ivViceFlag.image = UIImage(imageLiteralResourceName: worldCup.vice)
        lbWinner.text = worldCup.winner
        lbVice.text = worldCup.vice
        lbWinnerScore.text = worldCup.winnerScore
        lbViceScore.text = worldCup.viceScore
    }
}
