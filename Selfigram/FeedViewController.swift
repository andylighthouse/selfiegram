//
//  FeedViewController.swift
//  Selfigram
//
//  Created by Andy Li on 4/27/17.
//  Copyright © 2017 Andy Li. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController {
    
    var words = ["Hello", "my", "name", "is", "Selfigram"]
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let me = User(userName: "Andy", profileImage: UIImage(named: "car")!)
        let post1 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 1")
        let post2 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 2")
        let post3 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 3")
        let post4 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 4")
        let post5 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 5")
        let post6 = Post(selfieImage: UIImage(named: "car")!, user: me, comment: "pic 6")
        
        posts = [post1, post2, post3, post4, post5, post6]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath)
        
        
        let post = posts[indexPath.row]
        cell.imageView?.image = post.selfieImage
        cell.textLabel?.text = post.comment
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
