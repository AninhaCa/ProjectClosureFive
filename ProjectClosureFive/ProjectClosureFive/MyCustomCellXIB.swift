//
//  MyCustomCellXIB.swift
//  ProjectClosureFive
//
//  Created by Ana Paula Silva de Sousa on 26/03/23.
//

import UIKit

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
    
}
