<html>
<head>
    <style type="text/css">
        ${css}
    </style>
      <style type="text/css">
div{
  padding:0px;
  border:transparent 1px black;
  background-color : #FFFFFF; 
}

.container {
 width:100%%;
 border:thin solid #000000;
 background-color : #4646fd; 
}


.logo-izquierdo, .logo-centro, .logo-derecho{
  background-color : #4646fd; 
  align-text : center;
}
.logo-izquierdo {
 float:left;
 width:25%;
 
}
.logo-centro {
 padding-top : 27 px;
 padding-left : 60 px;	
 float:left;
 width:39%;
 
}
.logo-derecho {
 float:left;
 width:20%;
 padding-left : 10 px;
 
}
.cliente {
 clear:both;
 width:100%;
 margin 20 px;
 padding-top:5px;
 border-top:thin solid #000000;
}

.producto {
 float:left;
 width:75%;
 border-bottom:thin solid #000000;
}
.etiquetaproducto {
 clear:both;
 width:100%;
 border-bottom:thin solid #000000;
}

.claveproducto {
 float:left;
 width:25%;
 border-bottom:thin solid #000000;
}

.espaciosalud {
 float:left;
 width:60%;
 }
.salud {
 float:left;
 width:170px;
 background-color : blue;
 color :  white;   
 border:thin solid #000000;
 padding:3px; 
}
.datossalud {
 float:left;
 width:10%;
 border:thin solid #000000;
 padding:3px;
}
.espacioinflamabilidad {
    clear: both;
 float:left;   
 width:60%;
 }
.inflamabilidad {
 float:left;
 width:170px;
 background-color : red;
 color :  white;
 border:thin solid #000000;
 padding:3px;   
}
.datosinflamabilidad {
 float:left;
 width:10%;
 border:thin solid #000000;   
 padding:3px;
    }

.espacioreactividad {
    clear: both;
 float:left;   
 width:60%;

 }
.reactividad {
 float:left;
 width:170px;
 background-color : yellow;
 color :  black;
 border:thin solid #000000;
 padding:3px;   
}
.datosreactividad {
 float:left;
 width:10%;
 border:thin solid #000000;  
 padding:3px; 
    }

.espacioproteccion {
    clear: both;
 float:left;   
 width:60%;
 }
.proteccion {
 float:left;
 width:170px;
 background-color : white;
 color :  black;
 border:thin solid #000000;
 padding:3px;   
}
.datosproteccion {
 float:left;
 width:10%;
 border:thin solid #000000;
 padding:3px;   
    }

.espacioriesgo {
    clear: both;
 float:left;   
 width:60%;
 }
.riesgo {
 float:left;
 width:170px;
 background-color : white;
 color :  black;
 border:thin solid #000000;
 padding:3px;   
}
.datosriesgo {
 float:left;
 width:10%;
 border:thin solid #000000;
 padding:3px;   
    }

.lote {
 float:left;   
 width:35%;
 }

.cantidad {
 float:left;   
 width:65%;
 }

.fecha {
 position : relative;   
 float:left;   
 top:20px;   
 width:100%;
    text-align : center;
    display: block; margin: 10px auto;
 }

.pedido {
 float:left;   
 width:70%;
    text-align : center;
    display: block; margin: 10px auto;
 }

.hechoenmexico {
 position : relative;
 float:right;
 top : 50px;
 right: 50 px; 
    text-align : left;
    z-index: 0;
 }
    </style> 
</head>
<body>
	
	
	
%for prodlot in objects:
<div class="container">
<div class="logo-izquierdo" >
${helper.embed_logo_by_name('gbw_logo')|n}
</div>
<div class="logo-centro" >
${helper.embed_logo_by_name('tintas_finas')|n}
</div>
<div class="logo-derecho" >
${helper.embed_logo_by_name('gbw_logo')|n}
</div>
<div class="cliente" >
    <span style="display: block; margin: 10px auto; text-align: center;">CLIENTE: <span style="font-weight: bold;">${data['form']['partner_name'] or '' } </span></span>
</div>
<div class="etiquetaproducto" >
    <span style="display: block; margin: 10px auto; text-align: right;">CLAVE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
</div>
<div class="producto" >
    <span style="font-weight: bold;display: block; margin: 10px auto;">${ prodlot.name or ''} </span>
</div>
<div class="claveproducto" >
    <span style="font-weight: bold;display: block; margin: 10px auto;">${ prodlot.default_code or ''} </span>
</div>
<div class="espaciosalud" >
    <div class="lote" > 
       LOTE = <span style="font-weight: bold;"> ${
      data['form']['lot_number'] or '' }
        </span>
    </div>
    <div class="cantidad" >
        CANTIDAD = <span style="font-weight: bold;"> ${
      data['form']['quantity'] or '' }
        </span>&nbsp;${ prodlot.uom_id.name or ''}
    </div>    
    
</div>
<div class="salud" >
    <span style="font-weight: bold;display: block; margin: 0px auto; text-align: center;">SALUD</span>
</div>
<div class="datossalud" >
    <span style="font-weight: bold;">${
        prodlot.danger_blue or ''}</span>
</div>
<div class="espacioinflamabilidad" >
    <div class="fecha" > 
         FECHA DE PRODUCCION =   
       <span style="font-weight: bold;">  ${
      data['form']['to_date'] or '' }
        </span>
    </div>
</div>
<div class="inflamabilidad" >
    <span style="font-weight: bold;display: block; margin: 0px auto; text-align: center;">INFLAMABILIDAD</span>
</div>
<div class="datosinflamabilidad" >
    <span style="font-weight: bold;">${
        prodlot.danger_red or ''}</span>
</div>
<div class="espacioreactividad" >
<div class="hechoenmexico" >
${helper.embed_logo_by_name('hecho_mexico')|n}
</div>

</div>
<div class="reactividad" >
    <span style="font-weight: bold;display: block; margin: 0px auto; text-align: center;">REACTIVIDAD</span>
</div>
<div class="datosreactividad" >
    <span style="font-weight: bold;">${
        prodlot.danger_yellow or ''}</span>
</div>

    
<div class="espacioproteccion" >
        <div class="pedido" > 
         PEDIDO No. =   
       <span style="font-weight: bold;">  ${
      data['form']['sale_order'] or '' }
        </span>
    </div>
</div>
<div class="proteccion" >
    <span style="font-weight: bold;display: block; margin: 0px auto; text-align: center;">Eq. PROTECCION</span>
</div>
<div class="datosproteccion" >
    <span style="font-weight: bold;">&nbsp;</span>
</div>       
        
<div class="espacioriesgo" >
&nbsp;
</div>
<div class="riesgo" >
    <span style="font-weight: bold;display: block; margin: 0px auto; text-align: center;">Riesgo Personal</span>
</div>
<div class="datosriesgo" >
    <span style="font-weight: bold;">&nbsp;</span>
</div>  
</div>
%endfor
</body> 
</html>

