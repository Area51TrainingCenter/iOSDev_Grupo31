//
//  ListaViewController.swift
//  Clase7Mod2
//
//  Created by Area51 on 8/22/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {
    
    var posts: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        solicitarPosts()
    }
    
    func solicitarPosts() {
        
        let session = URLSession.shared
        
        guard let url = URL(string: "http://localhost:3000/posts") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request) { (data, response, error) in
            
            if let _ = data {
                
                do {
                    
                    let result = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [[String: Any]]
                    
                    self.posts = Post.convertir(result)
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    

                }catch let mierror {
                    print(mierror.localizedDescription)
                }

            }else {
                print(error?.localizedDescription)
            }

        }
        task.resume()
        
    }


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        cell.textLabel?.text = posts[indexPath.row].title
        return cell
        
    }
    
}
