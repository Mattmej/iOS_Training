//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Note that this does not cover implementation of the functions inside the protocol.

protocol Areable {
    func calculateArea() -> Double
}

struct Circle : Areable {
    var radius:Double = 0.0
    
    func calculateArea() -> Double {
        return 3.1416 * pow(radius, 2)
    }
}
struct Triangle: Areable {
    var height:Double
    var base:Double
    
    func calculateArea() -> Double {
        return (height * base) / 2.0
    }
}
struct Square: Areable {
    var side:Double
    
    func calculateArea() -> Double {
        return pow(side, 2)
    }
}

var array:[Areable] = []
array.append(Square(side:20))
array.append(Triangle(height:20, base:20))
array.append(Circle(radius:10))

// This is a bit like inheritance, but a bit more flexible.
// Implementation is on parent class for inheritance.

for item in array {
    item.calculateArea()
}

var myAreableObj: Areable
myAreableObj = array.first!

protocol UITableViewViewDelegate {
    
    // How many sections?
    // Items per section?
    // Content of ea. section
    // Content of ea. item per section
    
    // Defines how many sections table has
    func numberOfSections() -> Int
    
    // Defines how many rows are in each section
    func numberOfRows(section:Int) -> Int
    
    // Defines what the content is for each section
    func itemFor(section:Int) -> String
    
    // Defines what the content of each cell is
    func cellFor(row:Int, section:Int) -> String
    
}

class UITableViewViewController {
    
    var delegate:UITableViewViewDelegate?
    // Not all classes have delegates. It is optional. So add an optional.
    
    init() {
        
    }
    
    func reloadData() {
//        let sections = delegate?.numberOfSections()
        guard let sections = delegate?.numberOfSections() else { return }
        // if conditions don't get met, do what is in the brackets.
        // guard let ensures that everything under the function runs if conditions are met.
        
        for i in 0..<sections {
            
            // print whatever that section is.
            if let sectionContent = delegate?.itemFor(section: i) {
                print(sectionContent)
            }
            
            if let numberOfRows = delegate?.numberOfRows(section: i) {
                for j in 0..<numberOfRows {
                    if let rowContent = delegate?.cellFor(row: j, section: i) {
                        print("- \(rowContent)")
                    }
                }
            }
            
        }
    }
    
}

class ViewController:UITableViewViewDelegate {
    var tableView:UITableViewViewController
    
    init() {
        tableView = UITableViewViewController()
        tableView.delegate = self
    }
    
    func viewDidLoad() {
        tableView.reloadData()
    }
}

