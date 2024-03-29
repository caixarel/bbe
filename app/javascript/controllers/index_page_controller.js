import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button", "list"]

  update() {
    const url = `bakeries/?query=${this.buttonTarget.dataset.query}`

    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })
  }

  // update() {
  //   const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
  //   fetch(url, { headers: { 'Accept': 'text/plain' } })
  //     .then(response => response.text())
  //     .then((data) => {
  //       //this.listTarget.outerHTML = data;
  //     })
  // }

}
