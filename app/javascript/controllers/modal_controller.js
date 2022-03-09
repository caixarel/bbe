import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'button', 'modal','close','picRight','picLeft','picList'];


  displayModal() {
    this.modalTarget.style.display = 'block'
    this.modalTarget.classList.toggle('fade')

  }
  closeModal(){
    this.modalTarget.style.display = 'none'
    this.modalTarget.classList.toggle('fade')
  }
  next(){
    let active = document.querySelector('.carousel-inner .active')
    active.classList.remove('active')
    if (active.nextElementSibling) {
      active.nextElementSibling.classList.add('active')
    }else{
      this.picListTarget.firstElementChild.classList.add('active')
    }
  }

  previous(){
    let active = document.querySelector('.carousel-inner .active')
    active.classList.remove('active')
    if (active.previousElementSibling) {
      active.previousElementSibling.classList.add('active')
    } else {
      this.picListTarget.lastElementChild.classList.add('active')
    }
  }

}
