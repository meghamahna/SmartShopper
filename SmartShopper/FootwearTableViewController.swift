//
//  FootwearTableViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-19.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

class FootwearTableViewController: UITableViewController {

       var footwearData: [(name: String, url: String)]?
       var currentIndex = -1
       override func viewDidLoad() {
           super.viewDidLoad()
           //MARK: - URL to navigate to the particular website of the brand
        //with the help of URL the user will access the website by clicking on the logo of that brand and it will directly open up the original website
           footwearData = [("sketchers","https://www.skechers.com/en-ca/"),("timberland","https://www.timberland.ca"), ("footlocker","https://www.footlocker.ca")]
           // Uncomment the following line to preserve selection between presentations
           // self.clearsSelectionOnViewWillAppear = false

           // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
           // self.navigationItem.rightBarButtonItem = self.editButtonItem
       }

       // MARK: - Table view data source

       override func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1
       }

       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
           return footwearData!.count ?? 0
       }

       // Returns data in cell
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "footwear")
           let clothBrand = footwearData![indexPath.row].name
           cell?.imageView?.image = UIImage(named: clothBrand)
           cell?.imageView?.frame = CGRect(x: 50, y: 110, width: 75, height: 60)
           // Configure the cell...

           return cell!
       }
       
       override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return CGFloat(180)
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

       
       // MARK: - Navigation

       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           let detailView = segue.destination as? footwearWebViewController
        detailView?.footwearDelegate = self
           if let tableviewcell = sender as? UITableViewCell{
               if let index = tableView.indexPath(for: tableviewcell)?.row{
                   currentIndex = index
               }
           }
           
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       
       override func viewWillAppear(_ animated: Bool) {
           tableView.reloadData()
       }
}
