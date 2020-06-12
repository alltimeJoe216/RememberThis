//
//  NoteCollectionViewCell.swift
//  RememberThis
//
//  Created by Marissa Gonzales on 6/9/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class NoteCollectionViewCell: UICollectionViewCell {
    static let identifier = "NoteCell"
    @IBOutlet weak var noteLabel: UILabel!


    // Not using this right now
    var note: Note? {
        didSet {
            updateViews()
        }
    }
    func updateViews() {
        guard let note = note else {return }
        noteLabel.text = note.title
    }
}
