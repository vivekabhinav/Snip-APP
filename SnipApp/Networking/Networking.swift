//
//  Networking.swift
//  SnipApp
//
//  Created by cloud on 19/01/22.
//

import UIKit
classNetworking {


//This method will try to fetch data from server.
func getPostFrom(serverUrl:String, completionHandler : @escaping ([PostModel])->() ) {

    URLSession.shared.dataTask(with: URL(string: serverUrl)!) {​​​ (data, response, error); in

if let _ = error {
print("unable to fetch data")
return
}

do {
//once we get the data from server , we try to convert the data to our structure - we called structure as model
let objPostList = try JSONDecoder.init().decode([PostModel].self, from: data!)
print(objPostList)
completionHandler(objPostList)
}​​​catch {
print("Exception : \(error)")
}

}​​​.resume()

}

}
​[9:11 AM] Faculty .[A15]
    classHomeVC: UIViewController {

//Data source array for tableview
var objPostList : [PostModel?] = []

//Tableview
@IBOutletweakvarobjTableView: UITableView!


overridefuncviewDidLoad() {
super.viewDidLoad()

//try to fetch the data from the server
let objNetworking = Networking()
//call the getpost method
objNetworking.getPostFrom(serverUrl: Server.kPost.rawValue) {​​​ objmodel in

//set data received from server
self.objPostList = objmodel

//Refresh the tableview
DispatchQueue.main.async {
self.objTableView.reloadData()
}
print("dkdkd")
}
}

}​​​
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


