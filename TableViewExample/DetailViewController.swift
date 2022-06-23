//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Dawood on 14/06/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var dimg: UIImageView!
    @IBOutlet weak var dlbl1: UILabel!
    @IBOutlet weak var dlbl2: UILabel!
    
    // MARK: - Variables
    var strLbl1:String!
    var strLbl2:String!
    var strImg:UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dlbl1.text = strLbl1
        dlbl2.text = strLbl2
        dimg.image = strImg
    }
    

}
