<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <% 
        //http://localhost:8082/test.jsp
        out.println("<h1>Bienvenidos!</h1>"); 
    %>

    <form>
        Numero 1: <input class="input" type="text" value="0" name="nro1" /><br>
        Numero 2: <input class="input" type="text" value="0" name="nro2" /><br>
        <input class="button" type="submit" value="Sumar" />
    </form>

    <% 
        try{
            if( request.getParameter("nro1")!=null && 
                request.getParameter("nro2")!=null){
            double nro1=Double.parseDouble(request.getParameter("nro1"));
            double nro2=Double.parseDouble(request.getParameter("nro2"));
            double resultado=nro1+nro2;
            out.println("<p>Resultado: "+resultado+"</p>");
        }
        }catch(Exception e){
            System.out.println("************************************");
            System.out.println(e);
            System.out.println("************************************");
        }
    %>

</body>
</html>