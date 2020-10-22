///// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

class StoryPrompts {

  enum Genre: Int {
    case scifi, horror
  }

  static func promptFor(genre: Genre) -> String {
    let prompts = stubs[genre.rawValue]
    return prompts[Int.random(in: 0 ..< prompts.count)]
  }

  static var stubs = [
    [
      "The <adjective> legion, a horrific cult led by a cyborg <noun>, <verb> <number> missles at Earth.",
      "Harid Ryder is a half human, half <noun>. He <verb> the last remaining <noun> in a <adjective> quest before the sun explodes in <number> days.",
      "Axel is a <noun> who hacks into a <adjective> agency. In it, he <verb> a secret plot to lace <number> hotdogs with <noun> dust.",
      "The Tressal-1 is a <adjective> <noun> on an intergalatic quest. It <verb> from earth, hoping to reach a nearby star system in <number> of decades.",
      "Aliens <verb> on the <noun>. The aliens declare all the water belongs to them. They give <number> of days before they start their <adjective> plan.",
      "A world war ends when a <adjective> <noun> <verb> on the earth. People have only <number> of days to unite or be destroyed."
  ],
  [
    "Unknown to the camp counselers, a <adjective> <noun> stalks their camp. The <noun> <verb> them one at a time until only <number> remain",
    "When Beth answered the <noun>, a <adjective> voice asks her about scary movies. When she guesses wrong, the <noun> <verb> her friends until she guesses right.",
    "At night, Timmy sees a <adjective> <noun> that no one else can see. Timmy <verb> crazy so he confronts the <noun> in the dead of night.",
    "An ancient <noun> is broken The dead <verb> from their graves. The <adjective> dead surround a small town <number> thousand people",
    "A radioactive leak causes a <noun> to grow <number> of feet. The <noun> then <verb> the <adjective> city."
  ]
]

}
