
 function menuMobiliFunction(){
    const menuButton = document.querySelector('.btn-hamburguer')
    const menuLista = document.querySelector('.lista')

    function openMenu (){
        menuLista.classList.toggle('active');
        menuButton.classList.toggle('active');
    }

    menuButton.addEventListener('click', openMenu)
}

menuMobiliFunction();
