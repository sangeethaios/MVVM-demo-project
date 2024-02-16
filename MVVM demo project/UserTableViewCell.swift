//
//  UserTableViewCell.swift
//  MVVM demo project
//
//  Created by Ardhas Dev on 16/02/24.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var emaillbl: UILabel!
    
    func configure(with user: User) {
        namelbl.text = user.name
        emaillbl.text = user.email
        namelbl.font = UIFont.systemFont(ofSize: 17)
        emaillbl.textColor = .systemBlue
        namelbl.textColor = .black
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}
