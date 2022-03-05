import { Controller } from "stimulus";

export default class extends Controller {

  static targets = ['tagdiv','tag'];


  addVote() {
    const url = `/bakeries/${this.tagTarget.dataset.bakery}/tags/${this.tagTarget.dataset.id}`
    console.log(url)
    console.log(this.tagdivTarget.tag)
    fetch(url, { method: 'PATCH', headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.tagdivTarget.outerHTML = data;
      });


  }

}
