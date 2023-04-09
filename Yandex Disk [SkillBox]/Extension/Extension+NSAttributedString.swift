//
//  Extension+NSAttributedString.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 09.04.2023.
//

import UIKit

extension NSMutableAttributedString {
    static func attributedStringWithGraphikFont(string: String, size: CGFloat, color: UIColor, graphikFontName: String, tintFontName: String, range1: NSRange, range2: NSRange) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: string)

        let graphikFont = UIFont(name: graphikFontName, size: size)
        let tintFont = UIFont(name: tintFontName, size: size)

        attributedString.addAttribute(.font, value: graphikFont ?? .systemFont(ofSize: size, weight: .bold), range: range1)
        attributedString.addAttribute(.foregroundColor, value: color, range: range2)
        attributedString.addAttribute(.font, value: tintFont ?? .systemFont(ofSize: size, weight: .thin), range: range2)

        return attributedString
    }
}
