//
//  Text+Extension.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

extension Text {
    func contrastedForeground(backgroundColor: Color) -> some View {
        let uiColor = UIColor(backgroundColor)
        let luminance = uiColor.luminance

        return luminance < 0.6 ? foregroundColor(.white) : foregroundColor(.black)
    }
}
