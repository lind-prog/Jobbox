document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.btn-diplome').forEach(button => {
    button.addEventListener('click', (event) => {
      const card = event.target.closest('.tinder--card');
      const diplomeCard = card.querySelector('.diplome-card');
      diplomeCard.classList.toggle('show');
      diplomeCard.classList.toggle('hidden');
    });
  });

  document.querySelectorAll('.btn-experience').forEach(button => {
    button.addEventListener('click', (event) => {
      const card = event.target.closest('.tinder--card');
      const experienceCard = card.querySelector('.experience-card');
      experienceCard.classList.toggle('show');
      experienceCard.classList.toggle('hidden');
    });
  });
});
