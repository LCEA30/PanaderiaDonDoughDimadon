/**
 * 
 */
const container = document.getElementById('container');
const ModoAdministrador = document.getElementById('CambiarModoAdministrador');
const ModoVendedor = document.getElementById('CambiarModoVenderor');

ModoAdministrador.addEventListener('click', () => {
	container.classList.add("active");
});

ModoVendedor.addEventListener('click', () => {
	container.classList.remove("active");
});