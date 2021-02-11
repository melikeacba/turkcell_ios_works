//
//  DB.swift
//  homework_4
//
//  Created by Melike Açba on 28.01.2021.
//

import Foundation
import SQLite


struct ProductSt {
    var number:Int64 = 0
    var title:String = ""
    var detail:String = ""
    
}
class DB {
    
    var db:Connection!
    var tableProduct = Table("product")
    
    let number = Expression<Int64>("number")
    let title = Expression<String?>("title")
    let detail = Expression<String>("detail")
    
    
    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    
    
    func fncConnection() {
        
        let  dbPath = path + "/db.sqlite3"
        print("Full Path : \(dbPath)")
        db = try! Connection(dbPath)
        
        do {
            try db.scalar(tableProduct.exists)
        } catch  {
            
            try! db.run(tableProduct.create { i in
                i.column(number, primaryKey: true)
                i.column(title)
                i.column(detail)
                })
        }
        
    }
 
    
    func productInsert(title: String, detail: String) -> Int64 {
        
        do {
            let insert = tableProduct.insert( self.title <- title, self.detail <- detail )
            return try db.run(insert)
        } catch  {
            return -1
        }
        
    }
    
    
    func productList() -> [ProductSt] {
        var arr:[ProductSt] = []
        let products = try! db.prepare(tableProduct)
        for item in products {
            let us = ProductSt(number: item[number], title:item[title]!, detail:item[detail])
            arr.append(us)
        }
        return arr
    }
    
    func productDelete( pnumber:Int64 ) -> Int {
        let alice = tableProduct.filter( number == pnumber )
        return try! db.run(alice.delete())
    
    
}

}
