<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Serviço de Mensageria</title>
</head>
<body>
	
	<div>
		<h1 id="titulo">Serviço de Mensageria</h1>
		<p id="subtitulo">Formulário para envio de e-mails</p>
		<hr>
		<br>
	</div>

	<form action="taghtml" method= "post">
		<div class="campo">
			<label for="email"><strong>E-mail</strong></label> <select
				name="email" id="email" required>
				<option selected disabled value="">Selecione um e-mail</option>
					<c:forEach items="${listaDeUsuario}" var="usu">
						<option value="${usu.email}"> ${usu.email} </option>
					</c:forEach>
			</select>
		</div>

		<div class="campo">
			 <label> <input type="radio" name="radio" value="formal" >Cumprimento Formal</label> 
			<label> <input type="radio" name="radio" value="horario">Cumprimento conforme horário</label>
		</div>


		<fieldset class="grupo">
			<div id="check">

				 <input type="checkbox" id="aviso" name="aviso" value="aviso"> 
					<label for="aviso"> Incluir aviso de "e-mail automático"</label>
			</div>
		</fieldset>
		
		<fieldset class="grupo">
       
                <div class="campo">
                    <br><label for="titulo"><strong>Título</strong></label>
                    <input type="text" name="titulo" id="titulo" required>
                </div>

            </fieldset> 

		<div class="campo">
			<br> <label for="mensagem"><strong>Mensagem: </strong></label>
			<textarea rows="6" style="width: 26em" id="mensagem"
				name="mensagem" required></textarea>
		</div>
		
		<button class="botao" type="submit" onsubmit="">Enviar</button>
		<button class="botao2" href="index.jsp" onsubmit="">Voltar</button>

	</form>

</body>
<style>
* {
    margin: 0;
    padding: 0;
}

/* Elementos com o ID "titulo" */
#titulo {
    font-family: sans-serif;
    color: #59429d;
    margin-left: 9%;
} 

/* Elementos com o ID "subtitulo" */
#subtitulo {
    font-family: sans-serif;
    color: #785c8e;
    margin-left: 15%;
} 

#check{
    display: inline-block;
}
hr {
	border: 0;
	border-top: 1px solid ;
	align:center;
	width:49%;
}
/* Elementos de tag <fieldset>*/
fieldset {
    border: 0;
}

/* Elemento de tag <body> */
body{
    background-color: #f2e6e6;
    font-family: sans-serif;
    font-size: 1em;
    color: #59429d;
    margin-left: 36%;
    margin-top: 2%;
    justify-content: center;
}

/* Elementos de tags <body>, <input>, <Select>, <textarea> e <button> */
input, select, textarea, button {
    font-family: sans-serif;
    font-size: 1em;
    color: #59429d;
    border-radius: 5px;
}

/* Elementos de classe "grupo" nos estados das pseudoclasses "before" e "after" */
.grupo:before, .grupo:after {
    display: table;
}

/* Elementos de classe "grupo" no estado da pseudoclasse "after" */
.grupo:after {
    clear: both;
}

/* Elementos de classe "campo" */
.campo {
    margin-bottom: 1em;
}

/* Elementos de classe "campo" de tag <label> */
.campo label {
    margin-bottom: 0.2em;
    color: #59429d;
    
}

/* Elementos de classe "campo" ou "grupo" de tag <fieldset> */
fieldset.grupo .campo {
    float:  left;
    margin-right: 1em;
}

/* Elementos de classe "campo" das tags <input> com atributo text e email, da tag <select> e da tag <textarea>*/
.campo input[type="text"], .campo input[type="email"], .campo select, .campo textarea {
    padding: 0.2em;
    border: 1px solid #59429d;
    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
    display: block;
}

/* Elementos de classe "campo" de tag <select> e <option>*/
.campo select option {
    padding-right: 6em;
}

/* Elemento de classe "campo" com tag <input>, <select> e <textarea> tocas com estado da pseudoclasse "focus"*/
.campo input:focus, .campo select:focus, .campo textarea:focus {
    background: #f2e6e6;
}

/* Elemento de classe "botao" */
.botao {
    font-size: 1.2em;
    background: #785c8e;
    border: 0;
    margin-bottom: 1em;
    color: #ffffff;
    padding: 0.2em 0.6em;
    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
    text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
    position: absolute;
    top: 90%;
    left: 50%;
    margin-right: -50%;
    transform: translate(-50%, -50%)
}
.botao2 {
    font-size: 1.2em;
    background: #785c8e;
    border: 0;
    margin-bottom: 1em;
    color: #ffffff;
    padding: 0.2em 0.6em;
    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
    text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
    position: absolute;
    top: 90%;
    left: 60%;
    margin-right: -50%;
    transform: translate(-50%, -50%)
}
/* Elemento de classe "botao" com o estado da pseudoclasse "hover" */
.botao:hover {
    background: #CCBBFF;
    box-shadow:   
    text-shadow: none;
}

/* Elementos de classe botão e de tag <select> */
.botao, select{
    cursor: pointer;
}

/* Elemento de classe "botao" com o estado da pseudoclasse "hover" */
.botao2:hover {
    background: #CCBBFF;
    box-shadow:   
    text-shadow: none;
}

/* Elementos de classe botão e de tag <select> */
.botao2, select{
    cursor: pointer;
}
</style>
</html>