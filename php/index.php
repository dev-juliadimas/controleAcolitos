<?php
    include_once("head.php"); 
    include_once("menu.php");
?>
<!DOCTYPE html>
<html lang1="pt-br">
    <head>
        <style>
            @import url("//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.min.css");
            .menu li a:hover,
            .menu li:nth-child(1) a {
                background: #086320;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="tela">            
            <h1 style="text-align: center">Acólitos</h1>            

            <table style="font-size:20px; width: 100%; text-align: center; margin: auto;" border="0">
                <header>
                    <tr style="padding: auto">
                        <!--<td><b>Responsável</b></td>-->
                        <td><b>Acólito</b></td>
                        <td><b>Função</b></td>
                        <td><b>Data</b></td>
                    </tr>
                </header>
                <tr class="lista" style="border: none;">
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </body>
</html>