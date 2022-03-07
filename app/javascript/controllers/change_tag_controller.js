import { Controller } from "stimulus";

export default class extends Controller {

  static targets = ['tagdiv','tag'];


  addVote() {
    const url = this.tagdivTarget.dataset.url
    fetch(url, { method: 'PATCH', headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.tagdivTarget.outerHTML = data;
      });


  }

}
