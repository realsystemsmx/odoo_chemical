<html>
<head>
    <style type="text/css">
        ${css}
    </style>
</head>
<body>
	
	
	
%for prodlot in objects:
<!-- 
<div id="exq">
        ${helper.embed_image("jpg",company.logo, width=100, height=100)}
        <img src="" alt="" >
</div>   
!-->
<div class="etiqueta" >
	<div class="rombo" >
		<div class="danger_blue" >
			${ prodlot.product_id.danger_blue or ''} 
		</div>
		<div class="danger_red" >
			${ prodlot.product_id.danger_red or ''} 
		</div>
		<div class="danger_yellow" >
			${ prodlot.product_id.danger_yellow or ''} 
		</div>	
	</div>		
	<div class="product_data" >
		<div class="product" >
		${ prodlot.product_id.name or ''}
		</div>

		<div class="cas_number" >
		${ prodlot.product_id.cas_number or ''}
		</div>

		<div class="lot" >
		${ prodlot.name or '' }
		</div>

		<div class="brute" >
		${data['form']['brute'] or ''}
		</div>
		<div class="tara" >
		${data['form']['brute'] or ''}
		</div>

		<div class="net" >
		${data['form']['brute'] or ''}
		</div>
	</div>	
</div>	
				

%endfor
</body> 
</html>

