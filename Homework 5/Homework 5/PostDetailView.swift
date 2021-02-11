//
//  PostDetailView.swift
//  Homework 5
//
//  Created by Melike Açba on 2.02.2021.
//

import UIKit

class PostDetailView: UIViewController {
    

    var item : PostDatum?
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var txtDetail: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = item?.title
        lblId.text = "Post Number: \(String(item!.id))"
        txtDetail.text = item?.body

        
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
