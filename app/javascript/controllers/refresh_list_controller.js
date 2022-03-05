import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button","id"]

  update (){
    const url = `/bakeries/addtofav/${this.idTarget.dataset.id}`

  fetch(url, { headers: { 'Accept': 'text/plain' } })
  .then(response => response.text())
  .then((data) => {
    this.idTarget.outerHTML = data;
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
