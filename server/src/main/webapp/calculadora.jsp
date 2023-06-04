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
    <form>
        <table>
            <tr>
                <td><label class="label">Numero 1: </label></td>
                <td><input class="input" type="text" value="0" name="nro1" /></td>
            </tr>
            <tr>
                <td><label class="label">Numero 2: </label></td>
                <td><input class="input" type="text" value="0" name="nro2" /></td>
            </tr>
            <tr>
                <td><label class="label">Operación: </label></td>
                <td>
                    <select class="select"  name="operacion">
                        <option value="sumar">sumar</option>
                        <option value="restar">restar</option>
                        <option value="multiplicar">multiplicar</option>
                        <option value="dividir">dividir</option>
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