//
//  TagGroups.swift
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-09-23.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

import UIKit

let pinterest = [pin1, pin2, pin3, pin4]
let genre = [genre1, genre2, genre3, genre4, genre5, genre6, genre7, genre8, genre9, genre10]
let device = [device1, device2, device3, device4, device5, device6, device7, device8, device9]
let app = [app1, app2, app3, app4, app5, app6, app7, app8, app9, app10, app11, app12, app13, app14, app15, app16, app17, app18, app19, app20, app22, app22, app23, app24]

// MARK: - Pinterest

private let pin1 = AHTag(category: "Pinterest", title: "All Pins", color: UIColor(red: 1, green: 0.56, blue: 0.56, alpha: 1), URL: NSURL(string: "http://pinterest.com"), enabled: true)
private let pin2 = AHTag(category: "Pinterest", title: "Your Pins", color: UIColor(red: 1, green: 0.56, blue: 0.56, alpha: 1), URL: NSURL(string: "http://pinterest.com"), enabled: true)
private let pin3 = AHTag(category: "Pinterest", title: "People", color: UIColor(red: 1, green: 0.56, blue: 0.56, alpha: 1), URL: NSURL(string: "http://pinterest.com"), enabled: false)
private let pin4 = AHTag(category: "Pinterest", title: "Boards", color: UIColor(red: 1, green: 0.56, blue: 0.56, alpha: 1), URL: NSURL(string: "http://pinterest.com"), enabled: true)

// MARK: - Genre

private let genre1 = AHTag(category: "Genre", title: "Classical", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: true)
private let genre2 = AHTag(category: "Genre", title: "Comedy", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: true)
private let genre3 = AHTag(category: "Genre", title: "Country", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: false)
private let genre4 = AHTag(category: "Genre", title: "Dance", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: false)
private let genre5 = AHTag(category: "Genre", title: "Drama", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: true)
private let genre6 = AHTag(category: "Genre", title: "Early Listening", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: true)
private let genre7 = AHTag(category: "Genre", title: "Electronic", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: false)
private let genre8 = AHTag(category: "Genre", title: "Folk", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: false)
private let genre9 = AHTag(category: "Genre", title: "Holiday", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: false)
private let genre10 = AHTag(category: "Genre", title: "Mobile", color: UIColor(red: 0.626, green: 0.56, blue: 1, alpha: 1), URL: NSURL(string: "http://itunes.com"), enabled: true)

// MARK: - Device

private let device1 = AHTag(category: "Device", title: "Mobile", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)
private let device2 = AHTag(category: "Device", title: "Computer", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)
private let device3 = AHTag(category: "Device", title: "Tablet", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)
private let device4 = AHTag(category: "Device", title: "Car", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: false)
private let device5 = AHTag(category: "Device", title: "Speaker", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)
private let device6 = AHTag(category: "Device", title: "Playstation", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)
private let device7 = AHTag(category: "Device", title: "TV", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: false)
private let device8 = AHTag(category: "Device", title: "Android Wear", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: false)
private let device9 = AHTag(category: "Device", title: "Web Player", color: UIColor(red: 0.56, green: 0.713, blue: 1, alpha: 1), URL: NSURL(string: "http://www.spotify.com"), enabled: true)

// MARK: - App store

private let app1 = AHTag(category: "App Store", title: "Books", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app2 = AHTag(category: "App Store", title: "Business", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app3 = AHTag(category: "App Store", title: "Catalogues", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app4 = AHTag(category: "App Store", title: "Education", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app5 = AHTag(category: "App Store", title: "Finance", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app6 = AHTag(category: "App Store", title: "Food & Drink", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app7 = AHTag(category: "App Store", title: "Games", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app8 = AHTag(category: "App Store", title: "Health & Fitness", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app9 = AHTag(category: "App Store", title: "Kids", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app10 = AHTag(category: "App Store", title: "Lifestyle", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app11 = AHTag(category: "App Store", title: "Medical", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app12 = AHTag(category: "App Store", title: "Music", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app13 = AHTag(category: "App Store", title: "Navigation", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app14 = AHTag(category: "App Store", title: "News", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app15 = AHTag(category: "App Store", title: "Magazines & Newspapers", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app16 = AHTag(category: "App Store", title: "Photo & Video", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app17 = AHTag(category: "App Store", title: "Productivity", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app18 = AHTag(category: "App Store", title: "Reference", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app19 = AHTag(category: "App Store", title: "Shopping", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app20 = AHTag(category: "App Store", title: "Social Networking", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app21 = AHTag(category: "App Store", title: "Sports", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app22 = AHTag(category: "App Store", title: "Travel", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: false)
private let app23 = AHTag(category: "App Store", title: "Utilities", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
private let app24 = AHTag(category: "App Store", title: "Weather", color: UIColor(red: 0.396, green: 0.803, blue:0.64, alpha: 1), URL: NSURL(string: "http://appstore.com"), enabled: true)
