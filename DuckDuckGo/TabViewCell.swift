//
//  TabViewCell.swift
//  DuckDuckGo
//
//  Copyright © 2017 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import UIKit
import Core
import Kingfisher

class TabViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "TabCell"
    
    @IBOutlet weak var favicon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var link: UILabel!
    @IBOutlet weak var removeButton: UIButton!
    
    func update(withLink tabLink: Link) {
        title.text = tabLink.title ?? ""
        link.text = tabLink.url.absoluteString
        configureFavicon(tabLink.favicon)
    }
    
    private func configureFavicon(_ faviconUrl: URL?) {
        let placeholder = #imageLiteral(resourceName: "GlobeSmall")
        favicon.image = placeholder
        if let favicon = favicon {
            favicon.kf.setImage(with: faviconUrl, placeholder: placeholder)
        }
    }
}
