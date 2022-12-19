<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prova</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="shortcut icon" href="cadas.png" type="image/x-icon">

</head>
<body>
	<main>
        <h1>Cadastro de Produtos</h1>

        <form action= "controle" method= "post">
            <label for="name">
                <span>Nome</span>
                <input type="text" id="nome" name="nome" required>
            </label>

            <label for="email">
                <span>Preco</span>
                <input type="text" id="preco" name="preco" required>
            </label>

            <input type="submit" value="Salvar" id="button">
        </form>
        <br>
        <c:if test="${not empty mense}">
			<div class="alert alert-success" role="alert"> 
			<p>${mense}</p>
			</div>
		</c:if>
		
		<c:if test="${not empty mensagem}">
			<div class="alert alert-danger" role="alert">
			<p>${mensagem}</p>
			</div>
		</c:if>
	
    </main>
    <section class="images">
        <div class="circle"></div>
    </section>
 	
</body>
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap');

* {
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}

body {
    background: #1B2029;
    color: white;
    font-weight: 500;
    display: flex;
    min-height: 100vh;
    min-width: 100vw;
}

main {
    width: 50vw;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

main h1 {
    color: #8880FE;
    font-size: 3rem;
    margin-bottom: 3rem;
    text-align: center;
}

main.social-media {
    display: flex;
    align-content: center;
}

main .social-media a {
    text-decoration: none;
}

main .social-media img {
    width: 36px;
    margin-left: 3rem;
}

main .social-media a:first-child img {
    margin-left: 0;
}

main .alternative {
    margin-top: 1rem;
}

main .alternative span {
    font-size: 1.1rem;
    font-weight: 400;
    color: rgba(255, 255, 255, 0.3);
    position: relative;
}

main .alternative span::before, main .alternative span::after {
    position: absolute;
    content: '';
    height: 1px;
    width: 100px;
    bottom: 50%;
    right: 50px;
    background: rgba(255, 255, 255, 0.3);
}

main .alternative span::after {
    left: 50px;
}

main form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

main form label {
    display: flex;
    flex-direction: column;
}

main form label span {
    font-size: 1.1rem;
    margin-top: 2rem;
}

main form input {
    background: #161923;
    width: 300px;
    height: 50px;
    padding: 0 0.5rem;
    margin-top: 1rem;
    outline: none;
    color: rgba(166, 166, 166);
    font-size: 1rem;
    border: 1px solid #040B18;
    border-radius: 8px;
}

main form input[type="submit"] {
    cursor: pointer;
    width: 50%;
    margin-top: 4rem;
    border: none;
    border-radius: 32px;
    background: #6C63FF;
    color: white;
    font-size: 1.1rem;
    transition: all .3s ease-in-out;
}

main form input[type="submit"]:hover {
    background: #5952d4;
}

section.images {
    width: 50vw;
    display: flex;
    align-items: flex-end;
    justify-content: flex-end;
    padding: 4rem;
}

section.images img {
    width: 100%;
}

section.images .circle {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
    background: linear-gradient(45deg, #E8CBC0, #636FA4);
    clip-path: circle(40% at right 80%);
    z-index: -1;
}

@media only screen and (min-width: 900px) and (max-width: 1200px) {
    section.images img {
        width: 110%;
    }

    section.images .circle {
        clip-path: circle(35% at right 80%);
    }
}

@media only screen and (max-width: 900px) {
    section.images {
        display: none;
        visibility: hidden;
    }

    main {
        width: 100vw;
    }
}

@media only screen and (max-width: 450px) {
    main h1 {
        font-size: 2rem;
    }

    main .alternative span {
        font-size: 0.8rem;
    }

    main form label span, main form input[type="submit"] {
        font-size: 1rem;
    }
}
</style>
</html>