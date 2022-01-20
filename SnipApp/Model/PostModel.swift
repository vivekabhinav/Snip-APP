//
//  PostModel.swift
//  SnipApp
//
//  Created by cloud on 19/01/22.
//

import UIKit
struct PostModel: Decodable {

    var userId  : Int?

    var id      : Int?

    var title   : String?

    var body    : String?

}class PostModel: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
