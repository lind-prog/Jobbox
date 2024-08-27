// app/javascript/controllers/tinder_controller.js
import { Controller } from "@hotwired/stimulus";
// import Hammer from "hammerjs";

export default class extends Controller {
  static targets = ["cards", "card"];

  connect() {
    this.addSwipeHandlers();
  }

  addSwipeHandlers() {
    this.cardTargets.forEach(el => {
      const hammertime = new Hammer(el);
      console.log(hammertime)
      hammertime.get('pan').set({ direction: Hammer.DIRECTION_ALL });
      hammertime.get('pinch').set({ enable: true });

      hammertime.on('pan', event => {
        el.classList.add('moving');
        if (event.deltaX === 0) return;
        if (event.center.x === 0 && event.center.y === 0) return;

        this.element.classList.toggle('tinder_love', event.deltaX > 0);
        this.element.classList.toggle('tinder_nope', event.deltaX < 0);

        const xMulti = event.deltaX * 0.03;
        const yMulti = event.deltaY / 80;
        const rotate = xMulti * yMulti;

        event.target.style.transform = `translate(${event.deltaX}px, ${event.deltaY}px) rotate(${rotate}deg)`;
      });

      hammertime.on('panend', event => {
        el.classList.remove('moving');
        this.element.classList.remove('tinder_love');
        this.element.classList.remove('tinder_nope');

        const moveOutWidth = document.body.clientWidth;
        const keep = Math.abs(event.deltaX) < 80;
        // event.target.classList.toggle('removed', !keep);

        if (keep) {
          event.target.style.transform = '';
        } else {
          const endX = Math.max(Math.abs(event.velocityX) * moveOutWidth, moveOutWidth);
          const toX = event.deltaX > 0 ? endX : -endX;
          if (toX > 0) {
            this.swipeRight(event);
          } else {
            this.swipeLeft(event);
          }
        }
      });
    });
  }

  swipeLeft(event) {
    this.handleSwipe(false);
    event.preventDefault();
  }

  swipeRight(event) {
    this.handleSwipe(true);
    // event.preventDefault();
  }

  handleSwipe(love) {
    const cards = this.cardTargets.filter(card => !card.classList.contains('removed'));
    const moveOutWidth = document.body.clientWidth * 1.5;

    if (!cards.length) return false;

    const card = cards[cards.length - 1];
    console.log(card)
    card.classList.add('removed');

    card.style.transform = `translate(${love ? moveOutWidth : -moveOutWidth}px, -100px) rotate(${love ? -30 : 30}deg)`;

    if (love) {
      const url = `${window.location.origin}/offers/${card.dataset.offer}/candidacies?user_id=${card.dataset.id}`;
      fetch(url, {
        method: 'POST',
      })
    } else {
      console.log('remove')
    }
  }

  displayDiplome(event) {
    const card = event.target.offsetParent;
    const userId = card.dataset.id;
    const diplomeCard = document.getElementById(`${userId}_diplome`);
    console.log(diplomeCard)
    diplomeCard.classList.toggle('d-block');
    diplomeCard.classList.toggle('d-none');
  }

  displayExperience(event) {
    const card = event.target.offsetParent;
    const userId = card.dataset.id;
    const experienceCard = document.getElementById(`${userId}_experience`);
    console.log(experienceCard)
    experienceCard.classList.toggle('d-block');
    experienceCard.classList.toggle('d-none');
  }
}
