import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = [ "wish" ]

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    // console.log(this.wishTargets)

    // console.log(swiper.activeIndex)
      // console.log("next -> disliked");
      // console.log(this.wishTargets.length)
      // console.log(swiper.activeIndex)

  }
  submit() {
    this.element.submit();
  }


  }
