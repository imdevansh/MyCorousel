//
//  ViewController.swift
//  My Carousel
//
//  Created by GGS-BKS on 28/09/22.
//

import UIKit
import CardSlider
struct Item: CardSliderItem{
        var image: UIImage
        var rating: Int?
        var title: String
        var subtitle: String?
        var description: String?
    
    
}

class ViewController: UIViewController,CardSliderDataSource {

    var data = [Item]()
    @IBOutlet var buttonSlider: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(Item(image:UIImage(named: "Shwetha")!, title: "Shwetha shivalingappa", subtitle: "Pod lead", description: "Head of Mobile Development at B/S/H/ House Hold Appliance group"))
                
                data.append(Item(image:UIImage(named: "Prince")!, title: "Prince Kumar", subtitle: "Intern at BSH", description: "He is Prince Kumar, mobile application developer in both IoS and android. He is from Bihar."))
                
                data.append(Item(image:UIImage(named: "Shambu")!, title: "Shambhu Kumar", subtitle: "Senior iOS developer", description: "Senior iOS developer with more than 6 years of experience. Currently he is developer at BSH India."))
        data.append(Item(image:UIImage(named: "Asim")!, title: "Asim ", subtitle: "Executive at BSH Home Appliances Group", description: "Tester of Apps here in BSh. Looks alike Arijit Singh."))
                
                data.append(Item(image:UIImage(named: "Vijya")!, title: "Vijaya Shree Kanwal", subtitle: "Software Developer at ITC", description: "She is from Bhopal(City of Lakes). Currently working at BSH"))
        data.append(Item(image:UIImage(named: "Samrat")!, title: "SAMRAT SAURAV SINGH ", subtitle: "Software Developer at ITC", description: "He is from Patna. Currently working at BSH"))

       
    }
    @IBAction func didTapSliderButton(){
       
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)

    }
    func item(for index: Int) -> CardSlider.CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }


}

