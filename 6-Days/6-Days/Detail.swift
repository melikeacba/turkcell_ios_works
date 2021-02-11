//
//  Detail.swift
//  6-Days
//
//  Created by Melike Açba on 14.01.2021.
//

import UIKit

class Detail: UIViewController {
    
    var item = Product()
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pPrice: UILabel!
    @IBOutlet weak var pDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = item.image
        pTitle.text = item.title
        pPrice.text = "\(item.price)₺"
        pDetail.text = item.detail
        
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
