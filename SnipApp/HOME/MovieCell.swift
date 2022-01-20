//
//  MovieCell.swift
//  SnipApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class MovieCell: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ slected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
