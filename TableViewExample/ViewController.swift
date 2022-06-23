//
//  ViewController.swift
//  TableViewExample
//
//  Created by Dawood on 14/06/2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var tblView: UITableView!
    
    // MARK: - Variables
    var array1 = ["AAA","BBB","CCC","DDD","EEE","FFF","GGG","HHH"]
    var array2 = ["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh"]
    //#imageLiteral()
    var imgArr = [#imageLiteral(resourceName: "c7") , #imageLiteral(resourceName: "c1") , #imageLiteral(resourceName: "c2") , #imageLiteral(resourceName: "c5"), #imageLiteral(resourceName: "c4") , #imageLiteral(resourceName: "c6"), #imageLiteral(resourceName: "c6") , #imageLiteral(resourceName: "c3")]

    // MARK: - View Life cycle
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = imgArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strLbl1 = array1[indexPath.row]
        detail.strLbl2 = array2[indexPath.row]
        detail.strImg = imgArr[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            imgArr.remove(at: indexPath.row)
            tblView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions and Listeners
    
    // MARK: - Helper Methoods
}

// MARK: - UITableViewDelegate,UITableViewDataSource
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
}
