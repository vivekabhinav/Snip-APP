//
//  Constant.swift
//  SnipApp
//
//  Created by cloud on 19/01/22.
//

import UIKit

enum Server : String {

    case kPost = "https://jsonplaceholder.typicode.com/posts"

}
class HomeVC: UIViewController {
    
    
    
    //Data source array for tableview

    var objPostList : [PostModel?] = []

    

    //Tableview

    @IBOutlet weak var objTableView: UITableView!

    

    

    override func viewDidLoad() {

        super.viewDidLoad()

        

        //try to fetch the data from the server

        let objNetworking = Networking()

        //call the getpost method

        objNetworking.getPostFrom(serverUrl: Server.kPost.rawValue) { objmodel in

            

            //set data received from server

            self.objPostList = objmodel

            

            //Refresh the tableview

            DispatchQueue.main.async {

                self.objTableView.reloadData()

            }

            print("dkdkd")

        }

    }



}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


