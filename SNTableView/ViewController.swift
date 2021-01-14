//
//  ViewController.swift
//  SNTableView
//
//  Created by suni on 2021/01/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrImageName: [String] = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10"]
    
    var arrFruitName: [String] = ["Apples","Apricots","Aubergines","Avocados","Bananas","Butternut squash","Cherries","Clementines","Dates","Elderberries"]
    
    var arrFruitInfo: [String] = ["Granny Smith, Royal Gala, Golden Delicious and Pink Lady are just a few of the thousands of kinds of apple that are grown around the world.","Apricots can be eaten fresh or dried – both are packed with vitamins. ","Most aubergines are teardrop-shaped and have glossy purple skin.","Sometimes called an avocado pear, this fruit is often mistakenly described as a vegetable because we eat it in salads.","A great snack in a handy yellow skin!","Butternut squash is a large and pear-shaped fruit with a golden-brown to yellow skin.","Cherries grow from stalks in pairs and a tree can produce fruit for as long as 100 years!","This citrus fruit is the smallest of the tangerines.","These fruits come from the date palm tree and grow abundantly in Egypt.","These little, almost black berries grow on bushes all over the UK countryside in summer."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView에 Cell 등록
        let nibName = UINib(nibName: "FruitCell", bundle: nil)
       tableView.register(nibName, forCellReuseIdentifier: "FruitCell")
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // TableView item 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImageName.count
    }
    
    // TableView Cell의 Object
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath) as! FruitCell
        
        cell.thumbnail.image = UIImage(named: arrImageName[indexPath.row])
        cell.lblName.text = arrFruitName[indexPath.row]
        cell.lblInfo.text = arrFruitInfo[indexPath.row]
        
        return cell
        
    }
}

