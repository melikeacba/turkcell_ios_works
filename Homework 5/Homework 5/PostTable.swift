//
//  PostTable.swift
//  Homework 5
//
//  Created by Melike Açba on 2.02.2021.
//

import UIKit
import Alamofire

class PostTable: UITableViewController {
    
    var post: PostData? = []

    @IBOutlet weak var load: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = "https://jsonplaceholder.typicode.com/posts"
        AF.request(url).responseJSON { (res) in
            
            if (res.response?.statusCode == 200) {
                self.post = try? JSONDecoder().decode(PostData.self, from: res.data!)
                self.tableView.reloadData()
                self.load.stopAnimating()
                self.load.alpha = 0
                self.load.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            }

            }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = post![indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = String(item.id)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = post![indexPath.row]
        performSegue(withIdentifier: "detail", sender: item)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if ( segue.identifier == "detail" ) {
            let vc = segue.destination as! PostDetailView
            vc.item = sender as? PostDatum
        }
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
