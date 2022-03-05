import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'button','reviews'];

  displayForm() {
    this.formTarget.classList.toggle('d-none')
  }
  create(event){
    event.preventDefault();
    const url = this.formTarget.action
    fetch(url, {
      method: 'post',
      headers: { 'Accept': 'text/plain' },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.reviewsTarget.insertAdjacentHTML("beforebegin",data )
        this.formTarget.reset()
        this.formTarget.classList.add('d-none')
      })
  }
}
