//
//  MyCustomCellXIB.swift
//  ProjectClosureFive
//
//  Created by Ana Paula Silva de Sousa on 26/03/23.
//

import UIKit
import SDWebImage

class MyCustomCellXIB: UITableViewCell {

    @IBOutlet var labelPizza: UILabel!
    @IBOutlet var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupXIB(pizza: PizzaElement?) {
        labelPizza.text = pizza?.name
        let urlImage = URL(string: pizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
}
