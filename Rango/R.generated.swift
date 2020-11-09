//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try font.validate()
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 10 colors.
  struct color {
    /// Color `accent`.
    static let accent = Rswift.ColorResource(bundle: R.hostingBundle, name: "accent")
    /// Color `detail`.
    static let detail = Rswift.ColorResource(bundle: R.hostingBundle, name: "detail")
    /// Color `discreteText`.
    static let discreteText = Rswift.ColorResource(bundle: R.hostingBundle, name: "discreteText")
    /// Color `easy`.
    static let easy = Rswift.ColorResource(bundle: R.hostingBundle, name: "easy")
    /// Color `hard`.
    static let hard = Rswift.ColorResource(bundle: R.hostingBundle, name: "hard")
    /// Color `lightDetail`.
    static let lightDetail = Rswift.ColorResource(bundle: R.hostingBundle, name: "lightDetail")
    /// Color `loaderBackground`.
    static let loaderBackground = Rswift.ColorResource(bundle: R.hostingBundle, name: "loaderBackground")
    /// Color `medium`.
    static let medium = Rswift.ColorResource(bundle: R.hostingBundle, name: "medium")
    /// Color `text`.
    static let text = Rswift.ColorResource(bundle: R.hostingBundle, name: "text")
    /// Color `title`.
    static let title = Rswift.ColorResource(bundle: R.hostingBundle, name: "title")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "accent", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accent(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accent, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "detail", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func detail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.detail, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "discreteText", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func discreteText(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.discreteText, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "easy", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func easy(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.easy, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "hard", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func hard(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.hard, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "lightDetail", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func lightDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.lightDetail, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "loaderBackground", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func loaderBackground(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.loaderBackground, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "medium", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func medium(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.medium, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "text", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func text(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.text, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "title", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func title(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.title, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 14 files.
  struct file {
    /// Resource file `Nunito-Black.ttf`.
    static let nunitoBlackTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-Black", pathExtension: "ttf")
    /// Resource file `Nunito-BlackItalic.ttf`.
    static let nunitoBlackItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-BlackItalic", pathExtension: "ttf")
    /// Resource file `Nunito-Bold.ttf`.
    static let nunitoBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-Bold", pathExtension: "ttf")
    /// Resource file `Nunito-BoldItalic.ttf`.
    static let nunitoBoldItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-BoldItalic", pathExtension: "ttf")
    /// Resource file `Nunito-ExtraBold.ttf`.
    static let nunitoExtraBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-ExtraBold", pathExtension: "ttf")
    /// Resource file `Nunito-ExtraBoldItalic.ttf`.
    static let nunitoExtraBoldItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-ExtraBoldItalic", pathExtension: "ttf")
    /// Resource file `Nunito-ExtraLight.ttf`.
    static let nunitoExtraLightTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-ExtraLight", pathExtension: "ttf")
    /// Resource file `Nunito-ExtraLightItalic.ttf`.
    static let nunitoExtraLightItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-ExtraLightItalic", pathExtension: "ttf")
    /// Resource file `Nunito-Italic.ttf`.
    static let nunitoItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-Italic", pathExtension: "ttf")
    /// Resource file `Nunito-Light.ttf`.
    static let nunitoLightTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-Light", pathExtension: "ttf")
    /// Resource file `Nunito-LightItalic.ttf`.
    static let nunitoLightItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-LightItalic", pathExtension: "ttf")
    /// Resource file `Nunito-Regular.ttf`.
    static let nunitoRegularTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-Regular", pathExtension: "ttf")
    /// Resource file `Nunito-SemiBold.ttf`.
    static let nunitoSemiBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-SemiBold", pathExtension: "ttf")
    /// Resource file `Nunito-SemiBoldItalic.ttf`.
    static let nunitoSemiBoldItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Nunito-SemiBoldItalic", pathExtension: "ttf")

    /// `bundle.url(forResource: "Nunito-Black", withExtension: "ttf")`
    static func nunitoBlackTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoBlackTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-BlackItalic", withExtension: "ttf")`
    static func nunitoBlackItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoBlackItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-Bold", withExtension: "ttf")`
    static func nunitoBoldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoBoldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-BoldItalic", withExtension: "ttf")`
    static func nunitoBoldItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoBoldItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-ExtraBold", withExtension: "ttf")`
    static func nunitoExtraBoldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoExtraBoldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-ExtraBoldItalic", withExtension: "ttf")`
    static func nunitoExtraBoldItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoExtraBoldItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-ExtraLight", withExtension: "ttf")`
    static func nunitoExtraLightTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoExtraLightTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-ExtraLightItalic", withExtension: "ttf")`
    static func nunitoExtraLightItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoExtraLightItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-Italic", withExtension: "ttf")`
    static func nunitoItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-Light", withExtension: "ttf")`
    static func nunitoLightTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoLightTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-LightItalic", withExtension: "ttf")`
    static func nunitoLightItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoLightItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-Regular", withExtension: "ttf")`
    static func nunitoRegularTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoRegularTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-SemiBold", withExtension: "ttf")`
    static func nunitoSemiBoldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoSemiBoldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Nunito-SemiBoldItalic", withExtension: "ttf")`
    static func nunitoSemiBoldItalicTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nunitoSemiBoldItalicTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.font` struct is generated, and contains static references to 14 fonts.
  struct font: Rswift.Validatable {
    /// Font `Nunito-BlackItalic`.
    static let nunitoBlackItalic = Rswift.FontResource(fontName: "Nunito-BlackItalic")
    /// Font `Nunito-Black`.
    static let nunitoBlack = Rswift.FontResource(fontName: "Nunito-Black")
    /// Font `Nunito-BoldItalic`.
    static let nunitoBoldItalic = Rswift.FontResource(fontName: "Nunito-BoldItalic")
    /// Font `Nunito-Bold`.
    static let nunitoBold = Rswift.FontResource(fontName: "Nunito-Bold")
    /// Font `Nunito-ExtraBoldItalic`.
    static let nunitoExtraBoldItalic = Rswift.FontResource(fontName: "Nunito-ExtraBoldItalic")
    /// Font `Nunito-ExtraBold`.
    static let nunitoExtraBold = Rswift.FontResource(fontName: "Nunito-ExtraBold")
    /// Font `Nunito-ExtraLightItalic`.
    static let nunitoExtraLightItalic = Rswift.FontResource(fontName: "Nunito-ExtraLightItalic")
    /// Font `Nunito-ExtraLight`.
    static let nunitoExtraLight = Rswift.FontResource(fontName: "Nunito-ExtraLight")
    /// Font `Nunito-Italic`.
    static let nunitoItalic = Rswift.FontResource(fontName: "Nunito-Italic")
    /// Font `Nunito-LightItalic`.
    static let nunitoLightItalic = Rswift.FontResource(fontName: "Nunito-LightItalic")
    /// Font `Nunito-Light`.
    static let nunitoLight = Rswift.FontResource(fontName: "Nunito-Light")
    /// Font `Nunito-Regular`.
    static let nunitoRegular = Rswift.FontResource(fontName: "Nunito-Regular")
    /// Font `Nunito-SemiBoldItalic`.
    static let nunitoSemiBoldItalic = Rswift.FontResource(fontName: "Nunito-SemiBoldItalic")
    /// Font `Nunito-SemiBold`.
    static let nunitoSemiBold = Rswift.FontResource(fontName: "Nunito-SemiBold")

    /// `UIFont(name: "Nunito-Black", size: ...)`
    static func nunitoBlack(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoBlack, size: size)
    }

    /// `UIFont(name: "Nunito-BlackItalic", size: ...)`
    static func nunitoBlackItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoBlackItalic, size: size)
    }

    /// `UIFont(name: "Nunito-Bold", size: ...)`
    static func nunitoBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoBold, size: size)
    }

    /// `UIFont(name: "Nunito-BoldItalic", size: ...)`
    static func nunitoBoldItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoBoldItalic, size: size)
    }

    /// `UIFont(name: "Nunito-ExtraBold", size: ...)`
    static func nunitoExtraBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoExtraBold, size: size)
    }

    /// `UIFont(name: "Nunito-ExtraBoldItalic", size: ...)`
    static func nunitoExtraBoldItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoExtraBoldItalic, size: size)
    }

    /// `UIFont(name: "Nunito-ExtraLight", size: ...)`
    static func nunitoExtraLight(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoExtraLight, size: size)
    }

    /// `UIFont(name: "Nunito-ExtraLightItalic", size: ...)`
    static func nunitoExtraLightItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoExtraLightItalic, size: size)
    }

    /// `UIFont(name: "Nunito-Italic", size: ...)`
    static func nunitoItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoItalic, size: size)
    }

    /// `UIFont(name: "Nunito-Light", size: ...)`
    static func nunitoLight(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoLight, size: size)
    }

    /// `UIFont(name: "Nunito-LightItalic", size: ...)`
    static func nunitoLightItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoLightItalic, size: size)
    }

    /// `UIFont(name: "Nunito-Regular", size: ...)`
    static func nunitoRegular(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoRegular, size: size)
    }

    /// `UIFont(name: "Nunito-SemiBold", size: ...)`
    static func nunitoSemiBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoSemiBold, size: size)
    }

    /// `UIFont(name: "Nunito-SemiBoldItalic", size: ...)`
    static func nunitoSemiBoldItalic(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: nunitoSemiBoldItalic, size: size)
    }

    static func validate() throws {
      if R.font.nunitoBlack(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-Black' could not be loaded, is 'Nunito-Black.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoBlackItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-BlackItalic' could not be loaded, is 'Nunito-BlackItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-Bold' could not be loaded, is 'Nunito-Bold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoBoldItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-BoldItalic' could not be loaded, is 'Nunito-BoldItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoExtraBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-ExtraBold' could not be loaded, is 'Nunito-ExtraBold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoExtraBoldItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-ExtraBoldItalic' could not be loaded, is 'Nunito-ExtraBoldItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoExtraLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-ExtraLight' could not be loaded, is 'Nunito-ExtraLight.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoExtraLightItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-ExtraLightItalic' could not be loaded, is 'Nunito-ExtraLightItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-Italic' could not be loaded, is 'Nunito-Italic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-Light' could not be loaded, is 'Nunito-Light.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoLightItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-LightItalic' could not be loaded, is 'Nunito-LightItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoRegular(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-Regular' could not be loaded, is 'Nunito-Regular.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoSemiBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-SemiBold' could not be loaded, is 'Nunito-SemiBold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.nunitoSemiBoldItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Nunito-SemiBoldItalic' could not be loaded, is 'Nunito-SemiBoldItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 2 images.
  struct image {
    /// Image `avatar`.
    static let avatar = Rswift.ImageResource(bundle: R.hostingBundle, name: "avatar")
    /// Image `hourglass`.
    static let hourglass = Rswift.ImageResource(bundle: R.hostingBundle, name: "hourglass")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "avatar", bundle: ..., traitCollection: ...)`
    static func avatar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.avatar, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "hourglass", bundle: ..., traitCollection: ...)`
    static func hourglass(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hourglass, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = false

      struct uiSceneConfigurations {
        static let _key = "UISceneConfigurations"

        struct uiWindowSceneSessionRoleApplication {
          struct defaultConfiguration {
            static let _key = "Default Configuration"
            static let uiSceneConfigurationName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneConfigurationName") ?? "Default Configuration"
            static let uiSceneDelegateClassName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate"
            static let uiSceneStoryboardFile = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneStoryboardFile") ?? "Main"

            fileprivate init() {}
          }

          fileprivate init() {}
        }

        fileprivate init() {}
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 5 nibs.
  struct nib {
    /// Nib `LoaderViewController`.
    static let loaderViewController = _R.nib._LoaderViewController()
    /// Nib `LoginViewController`.
    static let loginViewController = _R.nib._LoginViewController()
    /// Nib `MenuOptionView`.
    static let menuOptionView = _R.nib._MenuOptionView()
    /// Nib `RecipeTableViewCell`.
    static let recipeTableViewCell = _R.nib._RecipeTableViewCell()
    /// Nib `SearchCollectionViewCell`.
    static let searchCollectionViewCell = _R.nib._SearchCollectionViewCell()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "LoaderViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.loaderViewController) instead")
    static func loaderViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.loaderViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "LoginViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.loginViewController) instead")
    static func loginViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.loginViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "MenuOptionView", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.menuOptionView) instead")
    static func menuOptionView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.menuOptionView)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "RecipeTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.recipeTableViewCell) instead")
    static func recipeTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.recipeTableViewCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SearchCollectionViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.searchCollectionViewCell) instead")
    static func searchCollectionViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.searchCollectionViewCell)
    }
    #endif

    static func loaderViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.loaderViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func loginViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.loginViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func menuOptionView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MenuOptionView? {
      return R.nib.menuOptionView.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MenuOptionView
    }

    static func recipeTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> RecipeTableViewCell? {
      return R.nib.recipeTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? RecipeTableViewCell
    }

    static func searchCollectionViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> SearchCollectionViewCell? {
      return R.nib.searchCollectionViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? SearchCollectionViewCell
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `favorite-cell`.
    static let favoriteCell: Rswift.ReuseIdentifier<RecipeTableViewCell> = Rswift.ReuseIdentifier(identifier: "favorite-cell")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _LoaderViewController.validate()
      try _LoginViewController.validate()
      try _RecipeTableViewCell.validate()
    }

    struct _LoaderViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "LoaderViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      static func validate() throws {
        if UIKit.UIImage(named: "hourglass", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'hourglass' is used in nib 'LoaderViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "loaderBackground", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'loaderBackground' is used in storyboard 'LoaderViewController', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _LoginViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "LoginViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      static func validate() throws {
        if UIKit.UIImage(named: "avatar", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'avatar' is used in nib 'LoginViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "accent", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'accent' is used in storyboard 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "discreteText", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'discreteText' is used in storyboard 'LoginViewController', but couldn't be loaded.") }
          if UIKit.UIColor(named: "title", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'title' is used in storyboard 'LoginViewController', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _MenuOptionView: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MenuOptionView"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MenuOptionView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MenuOptionView
      }

      fileprivate init() {}
    }

    struct _RecipeTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = RecipeTableViewCell

      let bundle = R.hostingBundle
      let identifier = "favorite-cell"
      let name = "RecipeTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> RecipeTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? RecipeTableViewCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "avatar", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'avatar' is used in nib 'RecipeTableViewCell', but couldn't be loaded.") }
        if UIKit.UIImage(named: "star.fill", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'star.fill' is used in nib 'RecipeTableViewCell', but couldn't be loaded.") }
        if UIKit.UIImage(named: "timer", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'timer' is used in nib 'RecipeTableViewCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "accent", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'accent' is used in storyboard 'RecipeTableViewCell', but couldn't be loaded.") }
          if UIKit.UIColor(named: "discreteText", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'discreteText' is used in storyboard 'RecipeTableViewCell', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _SearchCollectionViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SearchCollectionViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> SearchCollectionViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? SearchCollectionViewCell
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if UIKit.UIImage(named: "avatar", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'avatar' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "accent", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'accent' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
          if UIKit.UIColor(named: "lightDetail", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'lightDetail' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController

      let bundle = R.hostingBundle
      let mainStack = StoryboardViewControllerResource<UIKit.UITabBarController>(identifier: "MainStack")
      let name = "Main"

      func mainStack(_: Void = ()) -> UIKit.UITabBarController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mainStack)
      }

      static func validate() throws {
        if UIKit.UIImage(named: "avatar", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'avatar' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "heart", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'heart' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "house", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'house' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "magnifyingglass", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'magnifyingglass' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "person", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'person' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "accent", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'accent' is used in storyboard 'Main', but couldn't be loaded.") }
          if UIKit.UIColor(named: "discreteText", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'discreteText' is used in storyboard 'Main', but couldn't be loaded.") }
          if UIKit.UIColor(named: "text", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'text' is used in storyboard 'Main', but couldn't be loaded.") }
        }
        if _R.storyboard.main().mainStack() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mainStack' could not be loaded from storyboard 'Main' as 'UIKit.UITabBarController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
