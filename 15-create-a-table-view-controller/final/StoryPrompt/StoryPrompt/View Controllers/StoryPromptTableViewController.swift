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

import UIKit

class StoryPromptTableViewController: UITableViewController {

  var storyPrompts = [StoryPromptEntry]()

  override func viewDidLoad() {
    super.viewDidLoad()

    let storyPrompt1 = StoryPromptEntry()
    let storyPrompt2 = StoryPromptEntry()
    let storyPrompt3 = StoryPromptEntry()

    storyPrompt1.noun = "toaster"
    storyPrompt1.adjective = "smelly"
    storyPrompt1.verb = "attacks"
    storyPrompt1.number = 5

    storyPrompt2.noun = "toaster"
    storyPrompt2.adjective = "smelly"
    storyPrompt2.verb = "attacks"
    storyPrompt2.number = 5

    storyPrompt3.noun = "toaster"
    storyPrompt3.adjective = "smelly"
    storyPrompt3.verb = "attacks"
    storyPrompt3.number = 5

    storyPrompts = [storyPrompt1, storyPrompt2, storyPrompt3]
  }

    // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    storyPrompts.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "StoryPromptCell", for: indexPath)
    cell.textLabel?.text = "Prompt \(indexPath.row + 1)"
    cell.imageView?.image = storyPrompts[indexPath.row].image
    return cell
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let storyPrompt = storyPrompts[indexPath.row]
    performSegue(withIdentifier: "ShowStoryPrompt", sender: storyPrompt)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowStoryPrompt" {
      guard let storyPromptViewController = segue.destination as? StoryPromptViewController,
            let storyPrompt = sender as? StoryPromptEntry else {
        return
      }
      storyPromptViewController.storyPrompt = storyPrompt
    }
  }


}
