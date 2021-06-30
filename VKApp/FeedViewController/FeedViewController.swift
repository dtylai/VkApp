//
//  FeedViewController.swift
//  VKApp
//
//  Created by Tulai Dima on 30.06.21.
//

import UIKit

class FeedViewController: UIViewController {

    private var fetcher:DataFetcher = NetworkDataFetcher(networking: NetworkService())
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        fetcher.getFeed { feedResponse in
            guard let feedResponse = feedResponse else {return}
            feedResponse.items.map { feedItem in
                print(feedItem.date)
            }
        }

        
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
