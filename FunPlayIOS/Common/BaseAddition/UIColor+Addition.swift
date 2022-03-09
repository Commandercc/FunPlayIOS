//
//  UIColor+Addition.swift
//  CCBaseUIKit
//
//  Created by zhengxu on 2022/2/20.
//

import Foundation
import UIKit

extension UIColor {
    @objc static func HEXCOLOR(_ hexValue: Int) -> UIColor {
        return HEXACOLOR(hexValue, alpha: 1.0)
    }
    @objc static func HEXACOLOR(_ hexValue: Int, alpha: CGFloat) -> UIColor {
        let g = (CGFloat((hexValue & 0xFF00) >> 8)) / 255.0
        return UIColor(red: (CGFloat((hexValue & 0xFF0000) >> 16)) / 255.0, green: g, blue: (CGFloat(hexValue & 0xFF)) / 255.0, alpha: alpha)
    }
}

extension UIColor {
    static var x000000: UIColor { return UIColor.HEXCOLOR(0x000000) }
    static var x00001A: UIColor { return UIColor.HEXCOLOR(0x00001a) }
    static var x030407: UIColor { return UIColor.HEXCOLOR(0x030407) }
    static var x0A0611: UIColor { return UIColor.HEXCOLOR(0x0a0611) }
    static var x0A56DD: UIColor { return UIColor.HEXCOLOR(0x0a56dd) }
    static var x0C121D: UIColor { return UIColor.HEXCOLOR(0x0c121d) }
    static var x0E0E0E: UIColor { return UIColor.HEXCOLOR(0x0e0e0e) }
    static var x0F1521: UIColor { return UIColor.HEXCOLOR(0x0f1521) }
    static var x101724: UIColor { return UIColor.HEXCOLOR(0x101724) }
    static var x111111: UIColor { return UIColor.HEXCOLOR(0x111111) }
    static var x169345: UIColor { return UIColor.HEXCOLOR(0x169345) }
    static var x17284A: UIColor { return UIColor.HEXCOLOR(0x17284A) }
    static var x191724: UIColor { return UIColor.HEXCOLOR(0x191724) }
    static var x1A191C: UIColor { return UIColor.HEXCOLOR(0x1A191C) }
    static var x1D110B: UIColor { return UIColor.HEXCOLOR(0x1D110B) }
    static var x1f1f1f: UIColor { return UIColor.HEXCOLOR(0x1f1f1f) }
    static var x1FAAB6: UIColor { return UIColor.HEXCOLOR(0x1faab6) }
    static var x201E25: UIColor { return UIColor.HEXCOLOR(0x201e25) }
    static var x222222: UIColor { return UIColor.HEXCOLOR(0x222222) }
    static var x24334B: UIColor { return UIColor.HEXCOLOR(0x24334b) }
    static var x26282E: UIColor { return UIColor.HEXCOLOR(0x26282e) }
    static var x276FF0: UIColor { return UIColor.HEXCOLOR(0x276FF0) }
    static var x294959: UIColor { return UIColor.HEXCOLOR(0x294959) }
    static var x2B2B2B: UIColor { return UIColor.HEXCOLOR(0x2b2b2b) }
    static var x2F292B: UIColor { return UIColor.HEXCOLOR(0x2f292b) }
    static var x323232: UIColor { return UIColor.HEXCOLOR(0x323232) }
    static var x333333: UIColor { return UIColor.HEXCOLOR(0x333333) }
    static var x333438: UIColor { return UIColor.HEXCOLOR(0x333438) }
    static var x363440: UIColor { return UIColor.HEXCOLOR(0x363440) }
    static var x363636: UIColor { return UIColor.HEXCOLOR(0x363636) }
    static var x373740: UIColor { return UIColor.HEXCOLOR(0x373740) }
    static var x37B567: UIColor { return UIColor.HEXCOLOR(0x37b567) }
    static var x3D3D3D: UIColor { return UIColor.HEXCOLOR(0x3d3d3d) }
    static var x424242: UIColor { return UIColor.HEXCOLOR(0x424242) }
    static var x427CC7: UIColor { return UIColor.HEXCOLOR(0x427cc7) }
    static var x434343: UIColor { return UIColor.HEXCOLOR(0x434343) }
    static var x43444A: UIColor { return UIColor.HEXCOLOR(0x43444a) }
    static var x444444: UIColor { return UIColor.HEXCOLOR(0x444444) }
    static var x454251: UIColor { return UIColor.HEXCOLOR(0x454251) }
    static var x454354: UIColor { return UIColor.HEXCOLOR(0x454354) }
    static var x4676DE: UIColor { return UIColor.HEXCOLOR(0x0A56DD) }
    static var x467CDE: UIColor { return UIColor.HEXCOLOR(0x467cde) }
    static var x47454F: UIColor { return UIColor.HEXCOLOR(0x47454F) }
    static var x474748: UIColor { return UIColor.HEXCOLOR(0x474748) }
    static var x486372: UIColor { return UIColor.HEXCOLOR(0x486372) }
    static var x51505F: UIColor { return UIColor.HEXCOLOR(0x51505f) }
    static var x51A534: UIColor { return UIColor.HEXCOLOR(0x51A534) }
    static var x545454: UIColor { return UIColor.HEXCOLOR(0x545454) }
    static var x555555: UIColor { return UIColor.HEXCOLOR(0x555555) }
    static var x556994: UIColor { return UIColor.HEXCOLOR(0x556994) }
    static var x5B719A: UIColor { return UIColor.HEXCOLOR(0x5B719A) }
    static var x606266: UIColor { return UIColor.HEXCOLOR(0x606266) }
    static var x626569: UIColor { return UIColor.HEXCOLOR(0x626569) }
    static var x636569: UIColor { return UIColor.HEXCOLOR(0x636569) }
    static var x64AC4C: UIColor { return UIColor.HEXCOLOR(0x64ac4c) }
    static var x666666: UIColor { return UIColor.HEXCOLOR(0x666666) }
    static var x67C1FF: UIColor { return UIColor.HEXCOLOR(0x67c1ff) }
    static var x6EADFF: UIColor { return UIColor.HEXCOLOR(0x6eadff) }
    static var x6F7684: UIColor { return UIColor.HEXCOLOR(0x6f7684) }
    static var x714100: UIColor { return UIColor.HEXCOLOR(0x714100) }
    static var x737373: UIColor { return UIColor.HEXCOLOR(0x737373) }
    static var x777777: UIColor { return UIColor.HEXCOLOR(0x777777) }
    static var x830009: UIColor { return UIColor.HEXCOLOR(0x830009) }
    static var x888077: UIColor { return UIColor.HEXCOLOR(0x888077) }
    static var x888888: UIColor { return UIColor.HEXCOLOR(0x888888) }
    static var x8B4747: UIColor { return UIColor.HEXCOLOR(0x8B4747) }
    static var x8F9296: UIColor { return UIColor.HEXCOLOR(0x8f9296) }
    static var x949494: UIColor { return UIColor.HEXCOLOR(0x949494) }
    static var x979797: UIColor { return UIColor.HEXCOLOR(0x979797) }
    static var x989898: UIColor { return UIColor.HEXCOLOR(0x989898) }
    static var x999999: UIColor { return UIColor.HEXCOLOR(0x999999) }
    static var xAAAAAA: UIColor { return UIColor.HEXCOLOR(0xaaaaaa) }
    static var xAD6B45: UIColor { return UIColor.HEXCOLOR(0xAD6B45) }
    static var xAE7D2E: UIColor { return UIColor.HEXCOLOR(0xae7d2e) }
    static var xA2A2A2: UIColor { return UIColor.HEXCOLOR(0xa2a2a2) }
    static var xB10000: UIColor { return UIColor.HEXCOLOR(0xb10000) }
    static var xBFAB90: UIColor { return UIColor.HEXCOLOR(0xBFAB90) }
    static var xCCCCCC: UIColor { return UIColor.HEXCOLOR(0xcccccc) }
    static var xDDDDDD: UIColor { return UIColor.HEXCOLOR(0xdddddd) }
    static var xD1D1D1: UIColor { return UIColor.HEXCOLOR(0xd1d1d1) }
    static var xD3D3D3: UIColor { return UIColor.HEXCOLOR(0xd3d3d3) }
    static var xD5D5D5: UIColor { return UIColor.HEXCOLOR(0xd5d5d5) }
    static var xD8D8D8: UIColor { return UIColor.HEXCOLOR(0xd8d8d8) }
    static var xD9DCEE: UIColor { return UIColor.HEXCOLOR(0xd9dcee) }
    static var xDFDFDF: UIColor { return UIColor.HEXCOLOR(0xdfdfdf) }
    static var xE3EDFF: UIColor { return UIColor.HEXCOLOR(0xe4e4e4) }
    static var xE437C1: UIColor { return UIColor.HEXCOLOR(0xe437c1) }
    static var xE4E4E4: UIColor { return UIColor.HEXCOLOR(0xe4e4e4) }
    static var xE4FDFF: UIColor { return UIColor.HEXCOLOR(0xe4fdff) }
    static var xE5E5E5: UIColor { return UIColor.HEXCOLOR(0xe5e5e5) }
    static var xE6E6E6: UIColor { return UIColor.HEXCOLOR(0xe6e6e6) }
    static var xE6B865: UIColor { return UIColor.HEXCOLOR(0xe6b865) }
    static var xE7E7E7: UIColor { return UIColor.HEXCOLOR(0xe7e7e7) }
    static var xE8E8E8: UIColor { return UIColor.HEXCOLOR(0xe8e8e8) }
    static var xE8FFE0: UIColor { return UIColor.HEXCOLOR(0xe8ffe0) }
    static var xE9E9E9: UIColor { return UIColor.HEXCOLOR(0xe9e9e9) }
    static var xEB0029: UIColor { return UIColor.HEXCOLOR(0xeb0029) }
    static var xEBE8ED: UIColor { return UIColor.HEXCOLOR(0xebe8ed) }
    static var xEBECF2: UIColor { return UIColor.HEXCOLOR(0xebecf2) }
    static var xEC463B: UIColor { return UIColor.HEXCOLOR(0xec463b) }
    static var xECECEC: UIColor { return UIColor.HEXCOLOR(0xececec) }
    static var xECF3FF: UIColor { return UIColor.HEXCOLOR(0xecf3ff) }
    static var xEDC580: UIColor { return UIColor.HEXCOLOR(0xedc580) }
    static var xEDEDF3: UIColor { return UIColor.HEXCOLOR(0xededf3) }
    static var xEDEDF4: UIColor { return UIColor.HEXCOLOR(0xededf4) }
    static var xEEEEEE: UIColor { return UIColor.HEXCOLOR(0xeeeeee) }
    static var xEF4238: UIColor { return UIColor.HEXCOLOR(0xef4238) }
    static var xEF4339: UIColor { return UIColor.HEXCOLOR(0xef4339) }
    static var xEFEFEF: UIColor { return UIColor.HEXCOLOR(0xefefef) }
    static var xE0BE97: UIColor { return UIColor.HEXCOLOR(0xE0BE97) }
    static var xF03D37: UIColor { return UIColor.HEXCOLOR(0xf03d37) }
    static var xF0E5D8: UIColor { return UIColor.HEXCOLOR(0xf0e5d8) }
    static var xF0F0F0: UIColor { return UIColor.HEXCOLOR(0xf0f0f0) }
    static var xF1303D: UIColor { return UIColor.HEXCOLOR(0xEB0029) }
    static var xF16F49: UIColor { return UIColor.HEXCOLOR(0xf16f49) }
    static var xF1F1F1: UIColor { return UIColor.HEXCOLOR(0xf1f1f1) }
    static var xF2F2F2: UIColor { return UIColor.HEXCOLOR(0xf2f2f2) }
    static var xF3F3F3: UIColor { return UIColor.HEXCOLOR(0xf3f3f3) }
    static var xF3FBF0: UIColor { return UIColor.HEXCOLOR(0xf3fbf0) }
    static var xF4CB88: UIColor { return UIColor.HEXCOLOR(0xf4cb88) }
    static var xF4F4F4: UIColor { return UIColor.HEXCOLOR(0xf4f4f4) }
    static var xF4FBFB: UIColor { return UIColor.HEXCOLOR(0xf4fbfb) }
    static var xF58400: UIColor { return UIColor.HEXCOLOR(0xf58400) }
    static var xF58B2D: UIColor { return UIColor.HEXCOLOR(0xf58b2d) }
    static var xF5D9A4: UIColor { return UIColor.HEXCOLOR(0xf5d9a4) }
    static var xF5EEE6: UIColor { return UIColor.HEXCOLOR(0xf5eee6) }
    static var xF5F5F5: UIColor { return UIColor.HEXCOLOR(0xf5f5f5) }
    static var xF5F8FF: UIColor { return UIColor.HEXCOLOR(0xf5f8ff) }
    static var xF6992C: UIColor { return UIColor.HEXCOLOR(0xf6992c) }
    static var xF6CE84: UIColor { return UIColor.HEXCOLOR(0xf6ce84) }
    static var xF6F6F6: UIColor { return UIColor.HEXCOLOR(0xf6f6f6) }
    static var xF75E00: UIColor { return UIColor.HEXCOLOR(0xf75e00) }
    static var xF7D798: UIColor { return UIColor.HEXCOLOR(0xF7D798) }
    static var xF7F7F7: UIColor { return UIColor.HEXCOLOR(0xf7f7f7) }
    static var xF8F8F8: UIColor { return UIColor.HEXCOLOR(0xf8f8f8) }
    static var xF9F9F9: UIColor { return UIColor.HEXCOLOR(0xf9f9f9) }
    static var xFAAF00: UIColor { return UIColor.HEXCOLOR(0xfaaf00) }
    static var xFAF9F9: UIColor { return UIColor.HEXCOLOR(0xfaf9f9) }
    static var xFAFAFA: UIColor { return UIColor.HEXCOLOR(0xfafafa) }
    static var xFAFAFF: UIColor { return UIColor.HEXCOLOR(0xfafaff) }
    static var xFBFBFB: UIColor { return UIColor.HEXCOLOR(0xfbfbfb) }
    static var xFC8B00: UIColor { return UIColor.HEXCOLOR(0xfc8b00) }
    static var xFCDEA8: UIColor { return UIColor.HEXCOLOR(0xfcdea8) }
    static var xFCFCFC: UIColor { return UIColor.HEXCOLOR(0xfcfcfc) }
    static var xFCFDFF: UIColor { return UIColor.HEXCOLOR(0xfcfdff) }
    static var xFDE5E9: UIColor { return UIColor.HEXCOLOR(0xfde5e9) }
    static var xFDFDFD: UIColor { return UIColor.HEXCOLOR(0xfdfdfd) }
    static var xFEB84C: UIColor { return UIColor.HEXCOLOR(0xFEB84C) }
    static var xFEFFFE: UIColor { return UIColor.HEXCOLOR(0xfefefe) }
    static var xFF1929: UIColor { return UIColor.HEXCOLOR(0xff1929) }
    static var xFF4343: UIColor { return UIColor.HEXCOLOR(0xff4343) }
    static var xFF535F: UIColor { return UIColor.HEXCOLOR(0xff535f) }
    static var xFF5757: UIColor { return UIColor.HEXCOLOR(0xff5757) }
    static var xFF5D58: UIColor { return UIColor.HEXCOLOR(0xff5d58) }
    static var xFF6F00: UIColor { return UIColor.HEXCOLOR(0xff6f00) }
    static var xFF6F5D: UIColor { return UIColor.HEXCOLOR(0xff6f5d) }
    static var xFF7C53: UIColor { return UIColor.HEXCOLOR(0xff7c53) }
    static var xFF8000: UIColor { return UIColor.HEXCOLOR(0xff8000) }
    static var xFF8400: UIColor { return UIColor.HEXCOLOR(0xff8400) }
    static var xFF8888: UIColor { return UIColor.HEXCOLOR(0xff8888) }
    static var xFF8800: UIColor { return UIColor.HEXCOLOR(0xff8800) }
    static var xFF9400: UIColor { return UIColor.HEXCOLOR(0xff9400) }
    static var xFF9797: UIColor { return UIColor.HEXCOLOR(0xff9797) }
    static var xFF9900: UIColor { return UIColor.HEXCOLOR(0xff9900) }
    static var xFF9E00: UIColor { return UIColor.HEXCOLOR(0xff9e00) }
    static var xFFAC00: UIColor { return UIColor.HEXCOLOR(0xffac00) }
    static var xFFBB29: UIColor { return UIColor.HEXCOLOR(0xffbb29) }
    static var xFFC771: UIColor { return UIColor.HEXCOLOR(0xffc771) }
    static var xFFCD74: UIColor { return UIColor.HEXCOLOR(0xffcd74) }
    static var xFFCD7F: UIColor { return UIColor.HEXCOLOR(0xffcd7f) }
    static var xFFCD88: UIColor { return UIColor.HEXCOLOR(0xffcd88) }
    static var xFFCF70: UIColor { return UIColor.HEXCOLOR(0xFFCF70) }
    static var xFFD69F: UIColor { return UIColor.HEXCOLOR(0xffd69f) }
    static var xFFDBDB: UIColor { return UIColor.HEXCOLOR(0xffdbdb) }
    static var xFFE26E: UIColor { return UIColor.HEXCOLOR(0xffe26e) }
    static var xFFE2B6: UIColor { return UIColor.HEXCOLOR(0xffe2b6) }
    static var xFFE2E2: UIColor { return UIColor.HEXCOLOR(0xffe2e2) }
    static var xFFE4F9: UIColor { return UIColor.HEXCOLOR(0xffe5e7) }
    static var xFFE4BF: UIColor { return UIColor.HEXCOLOR(0xffe4bf) }
    static var xFFE5E5: UIColor { return UIColor.HEXCOLOR(0xffe5e5) }
    static var xFFE5E7: UIColor { return UIColor.HEXCOLOR(0xffe5e7) }
    static var xFFE8E9: UIColor { return UIColor.HEXCOLOR(0xffe8e9) }
    static var xFFEBC3: UIColor { return UIColor.HEXCOLOR(0xffebc3) }
    static var xFFEED7: UIColor { return UIColor.HEXCOLOR(0xFFEED7) }
    static var xFFEEEF: UIColor { return UIColor.HEXCOLOR(0xffeeef) }
    static var xFFEFCE: UIColor { return UIColor.HEXCOLOR(0xffefce) }
    static var xFFEFF0: UIColor { return UIColor.HEXCOLOR(0xffeff0) }
    static var xFFF0DC: UIColor { return UIColor.HEXCOLOR(0xfff0dc) }
    static var xFFF2D9: UIColor { return UIColor.HEXCOLOR(0xfff2d9) }
    static var xFFF2F2: UIColor { return UIColor.HEXCOLOR(0xfff2f2) }
    static var xFFF3E1: UIColor { return UIColor.HEXCOLOR(0xfff3e1) }
    static var xFFF3EC: UIColor { return UIColor.HEXCOLOR(0xfff3ec) }
    static var xFFF3F4: UIColor { return UIColor.HEXCOLOR(0xfff3f4) }
    static var xFFF3FD: UIColor { return UIColor.HEXCOLOR(0xfff3fd) }
    static var xFFF4F4: UIColor { return UIColor.HEXCOLOR(0xfff4f4) }
    static var xFFF5E7: UIColor { return UIColor.HEXCOLOR(0xfff5e7) }
    static var xFFF7ED: UIColor { return UIColor.HEXCOLOR(0xfff7ed) }
    static var xFFF8F2: UIColor { return UIColor.HEXCOLOR(0xfff8f2) }
    static var xFFFCFC: UIColor { return UIColor.HEXCOLOR(0xfffcfc) }
    static var xFFFEF9: UIColor { return UIColor.HEXCOLOR(0xfffef9) }
    static var xFFFFFF: UIColor { return UIColor.HEXCOLOR(0xffffff) }
    
    func alpha(_ alpha: Double) -> UIColor {
        return withAlphaComponent(CGFloat(alpha))
    }
}

