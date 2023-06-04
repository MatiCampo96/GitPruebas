<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>calculadora</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1 class="titulo">Formulario de cursos</h1>
    <form>
        <table>
            <tr>
                <td><label class="label">Titulo: </label></td>
                <td><input class="input" type="text" value="" name="titulo" minlength="2" maxlength="20" /></td>
            </tr>
            <tr>
                <td><label class="label">Profesor: </label></td>
                <td><input class="input" type="text" value="" name="profesor"  minlength="2" maxlength="20" /></td>
            </tr>
            <tr>
                <td><label class="label">día: </label></td>
                <td>
                    <select class="select"  name="dia">
                        <option value="LUNES">lunes</option>
                        <option value="MARTES">martes</option>
                        <option value="MIERCOLES">miércoles</option>
                        <option value="JUEVES">jueves</option>
                        <option value="VIERNES">viernes</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label class="label">día: </label></td>
                <td>
                    <select class="select"  name="turno">
                        <option value="MAÑANA">mañana</option>
                        <option value="TARDE">tarde</option>
                        <option value="NOCHE">noche</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input class="button" type="submit" value="Calcular"    /></td>
                <td><input class="button" type="reset"  value="Borrar"      /></td>
            </tr>
        </table>
    </form>

    <% 
        try{
            if( request.getParameter("nro1")!=null && 
                request.getParameter("nro2")!=null &&
                request.getParameter("operacion")!=null){
            double nro1=Double.parseDouble(request.getParameter("nro1"));
            double nro2=Double.parseDouble(request.getParameter("nro2"));
            String operacion=request.getParameter("operacion");
            double resultado=0;
            switch(operacion){
                case "sumar":           resultado=nro1+nro2;              break;
                case "restar":          resultado=nro1-nro2;              break;
                case "multiplicar":     resultado=nro1*nro2;              break;
                case "dividir":         if(nro2!=0) resultado=nro1/nro2;  break;
            }
            out.println("<p class='label'>Resultado: "+resultado+"</p>");
        }
        }catch(Exception e){
            System.out.println("************************************");
            System.out.println(e);
            System.out.println("************************************");
        }
    %>

</body>
</html>