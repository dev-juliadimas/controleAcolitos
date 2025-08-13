<?php
    include_once("head.php"); 
    include_once("menu.php");

    $selectAcolito = "SELECT codAcolito, nomeAcolito FROM acolito ORDER BY nomeAcolito";
    $conSelectAcolito = mysqli_query($conn, $selectAcolito); 

    $selectEscalaGeral = "SELECT codEscalaGeral, dataInicio, dataFinal FROM escalaGeral ORDER BY dataInicio";
    $conSelectEscalaGeral = mysqli_query($conn, $selectEscalaGeral); 

    $selectFuncao = "SELECT codFuncao, nomeFuncao FROM funcao";
    $conSelectFuncao = mysqli_query($conn, $selectFuncao); 

    $selectMissa = "SELECT codMissa, diaSemana, horarioMissa FROM missa";
    $conSelectMissa = mysqli_query($conn, $selectMissa); 

    if(!empty($_POST['form'])){
        if(empty($_POST['acolito'])){
            echo "<script>alert('Faltou inserir o campo ACÓLITO');</script>";
        }else if(empty($_POST['escala'])){
            echo "<script>alert('Faltou inserir o campo ESCALA');</script>";
        }else if(empty($_POST['funcao'])){
            echo "<script>alert('Faltou inserir o campo FUNÇÃO');</script>";
        }else if(empty($_POST['missa'])){
            echo "<script>alert('Faltou inserir o campo MISSA');</script>";
        }else if(empty($_POST['responsavel'])){
            echo "<script>alert('Faltou inserir o campo RESPONSÁVEL');</script>";
        }else if(empty($_POST['dia'] || $_POST['mes'] || $_POST['ano'])){
            echo "<script>alert('Faltou inserir o campo DATA');</script>";
        }else{
            if(!empty($_POST['acolito'])){
                $acolito = $_POST['acolito'];
            }
            if(!empty($_POST['escala'])){
                $escala = $_POST['escala'];
            }
            if(!empty($_POST['funcao'])){
                $funcao = $_POST['funcao'];
            }
            if(!empty($_POST['missa'])){
                $missa = $_POST['missa'];
            }
            if(!empty($_POST['dataMissa'])){
                $data = $_POST['dataMissa'];
            }
            if(!empty($_POST['responsavel'])){
                $responsavel = $_POST['responsavel'];
            }
            if(!empty($_POST['dia']) && !empty($_POST['mes']) && !empty($_POST['ano'])){
                $data = $_POST['ano'] . "-" . $_POST['mes'] . "-" . $_POST['dia'];
            }

            $insert = "INSERT INTO escala (fk_escalaGeral, fk_acolito, responsavel, fk_funcao, fk_missa, data)";
            $insert = $insert . " VALUES ('" . $escala . "', '" . $acolito . "', '" . $responsavel . "', '" . $funcao . "', '" . $missa . "', '" . $data . "')";

            $conect = mysqli_query($conn, $insert);

            if ($conect == 1){
                echo "<script>alert('Dado salvo com sucesso.');</script>";
            }else{
                echo "<script>alert('Erro ao salvar o dado, tente novamente.');</script>";
            }
        }
    }

?>
<!DOCTYPE html>
<html lang1="pt-br">
    <head>
        <style>
            @import url("//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.min.css");
            .menu li a:hover,
            .menu li:nth-child(4) a {
                background: #086320;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="tela">            
            <h1 style="text-align: center">Acólitos</h1>            
            <form method="POST" class="form" style="text-align:center">
                Acólito:
                <select name="acolito" class="form">
                    <option></option>
                    <?php
                        while($dadoAcolito = $conSelectAcolito->fetch_array()){ 
                            $codAcolito = $dadoAcolito['codAcolito'];
                            $nomeAcolito = $dadoAcolito['nomeAcolito'];
                    ?>
                            <option <?php if(!empty($_POST['acolito']) && $_POST['acolito'] == $codAcolito){ echo "selected"; } ?> value = "<?php echo $codAcolito; ?>"> <?php echo $nomeAcolito; ?> </option>
                    <?php
                        }
                    ?>
                </select>
                Escala:
                <select name="escala" class="form">
                    <option></option>
                    <?php
                        while($dadoEscala = $conSelectEscalaGeral->fetch_array()){ 
                            $codEscalaGeral = $dadoEscala['codEscalaGeral'];
                            $dataInicio = $dadoEscala['dataInicio'];
                            $dataFinal = $dadoEscala['dataFinal'];
                            $dataInicio = date('d/m/Y', strtotime($dataInicio));
                            $dataFinal = date('d/m/Y', strtotime($dataFinal));
                            $stg_escala = "Escala 01 (" . $dataInicio . " - " . $dataFinal . ")";
                    ?>
                            <option <?php if(!empty($_POST['escala']) && $_POST['escala'] == $codEscalaGeral){ echo "selected"; } ?> value = "<?php echo $codEscalaGeral; ?>"> <?php echo $stg_escala; ?> </option>
                    <?php
                        }
                    ?>
                </select>
                Responsável:
                <select class="form" name="responsavel">
                    <option value = "N"> Não </option>
                    <option value = "S"> Sim </option>
                </select>
                    </br></br>
                Função:
                <select name="funcao" class="form"> 
                    <?php
                        while($dadoFuncao = $conSelectFuncao->fetch_array()){ 
                            $codFuncao = $dadoFuncao['codFuncao'];
                            $nomeFuncao = $dadoFuncao['nomeFuncao'];
                    ?>
                            <option <?php if(!empty($_POST['funcao']) && $_POST['funcao'] == $codFuncao){ echo "selected"; } ?> value = "<?php echo $codFuncao; ?>"> <?php echo $nomeFuncao; ?> </option>
                    <?php
                        }
                    ?>
                </select>
                
                    
                Missa:
                <select name="missa" class="form">
                    <option></option>
                    <?php
                        while($dadoMissa = $conSelectMissa->fetch_array()){ 
                            $codMissa = $dadoMissa['codMissa'];
                            $diaSemana = $dadoMissa['diaSemana'];
                            $horarioMissa = $dadoMissa['horarioMissa'];
                            $horarioMissa = date('H:i', strtotime($horarioMissa));

                            if($codMissa == 1){
                                $str_missa = $diaSemana;
                            }else{
                                $str_missa = $diaSemana . " - " . $horarioMissa;
                            }
                    ?>
                            <option <?php if(!empty($_POST['missa']) && $_POST['missa'] == $codMissa){ echo "selected"; } ?> value = "<?php echo $codMissa; ?>"> <?php echo $str_missa; ?> </option>
                    <?php
                        }
                    ?>
                </select>
                Data:
                <input type="number" name="dia" min="1" max="31" <?php if(!empty($_POST['dia'])){ echo "value=" . $_POST['dia']; }?> class="form"/>
                <select name="mes" class="form">
                    <option value="01" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '01'){ echo "selected"; }?>> Janeiro</option>
                    <option value="02" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '02'){ echo "selected"; }?>> Fevereiro</option>
                    <option value="03" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '03'){ echo "selected"; }?>> Março</option>
                    <option value="04" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '04'){ echo "selected"; }?>> Abril</option>
                    <option value="05" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '05'){ echo "selected"; }?>> Maio</option>
                    <option value="06" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '06'){ echo "selected"; }?>> Junho</option>
                    <option value="07" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '07'){ echo "selected"; }?>> Julho</option>
                    <option value="08" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '08'){ echo "selected"; }?>> Agosto</option>
                    <option value="09" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '09'){ echo "selected"; }?>> Setembro</option>
                    <option value="10" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '10'){ echo "selected"; }?>> Outubro</option>
                    <option value="11" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '11'){ echo "selected"; }?>> Novembro</option>
                    <option value="12" <?php if(!empty($_POST['mes']) && $_POST['mes'] == '12'){ echo "selected"; }?>> Dezembro</option>
                </select>
                <input type="number" name="ano" min="2020" max="2030" <?php if(!empty($_POST['ano'])){ echo "value=" . $_POST['ano']; }?> class="form"/>
                <input type="text" name="form" value="S" class="texto" style="display:none"/>
                    </br></br>
                <button class="buttons">
                    Adicionar
                </button>  
            </form>
        </div>
    </body>
</html>