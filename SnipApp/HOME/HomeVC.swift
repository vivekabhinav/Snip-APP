//
//  HomeVC.swift
//  SnipApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var objPostList : [PostModel?] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let objNetworking = Networking()
        
        objNetworking.getPostFrom(serverUrl: "")
    }
}

/*
        let objMovie1:Movie? = Movie{adult: false, id: 43861, original_language: "en", original_title: "Dune", overview: "Paul brilliant atha ahdjbdbjdfbh ajkdsfhfujh adjhgfeyb ashfkhfru ahdhsfjhdfsuhdfsjb absahjhdsfhuhwyru abhdhsghedubdcs aujdewduefghejsjb", popularity:993.327, release_date: "2021-09-15", title; "Dune"}
        
        let objMovie2:Movie? = Movie{adult: false, id: 43861, original_language: "en", original_title: "Dune", overview: "Paul brilliant atha ahdjbdbjdfbh ajkdsfhfujh adjhgfeyb ashfkhfru ahdhsfjhdfsuhdfsjb absahjhdsfhuhwyru abhdhsghedubdcs aujdewduefghejsjb", popularity:993.327, release_date: "2021-09-15", title; "Dune"}
        
        let objMovie3:Movie? = Movie{adult: false, id: 43861, original_language: "en", original_title: "Dune", overview: "Paul brilliant atha ahdjbdbjdfbh ajkdsfhfujh adjhgfeyb ashfkhfru ahdhsfjhdfsuhdfsjb absahjhdsfhuhwyru abhdhsghedubdcs aujdewduefghejsjb", popularity:993.327, release_date: "2021-09-15", title; "Dune"}
        
        let objMovie4:Movie? = Movie{adult: false, id: 43861, original_language: "en", original_title: "Dune", overview: "Paul brilliant atha ahdjbdbjdfbh ajkdsfhfujh adjhgfeyb ashfkhfru ahdhsfjhdfsuhdfsjb absahjhdsfhuhwyru abhdhsghedubdcs aujdewduefghejsjb", popularity:993.327, release_date: "2021-09-15", title; "Dune"}        // Do any additional setup after loading the view.
 
        
        objMovieList.append(objMovie1)
        objMovieList.append(objMovie2)
        objMovieList.append(objMovie3)
        objMovieList.append(objMovie4)
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

extension HomeVC : UITableViewDataSource
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return objPostList.count
    
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let objMovieCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
    let post = objPostList[indexPath.row]
    objMovieCell?.titleLable.text = post?.title ?? ""
    return objMovieCell!
}




/*
struct Movie {
    var adult:Bool?
    var id:Int?
    var original_language:String?
    var overview:String?
    var popularity:String?
    var title:String?


*/
