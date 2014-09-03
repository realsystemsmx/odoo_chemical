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
 
</div>   
!-->

<div class="etiqueta" >
	<div class="company_logo_box" >
	    ${helper.embed_image("jpg",company.logo, width=100, height=100)}
        <img src="" alt="" > 
	</div>
	
	<div class="danger_box">
		<table>
			<tr>
			<td>
			<div class="rombo" >
				%if data['form']['full_sticker']:
				<div class="rombo_image" >
				</div>
				%endif
				<div class="danger_blue" >
					${ prodlot.danger_blue or ''} 
				</div>
				<div class="danger_red" >
					${ prodlot.danger_red or ''} 
				</div>
				<div class="danger_yellow" >
					${ prodlot.danger_yellow or ''} 
				</div>	
			</div>
			</td>
			</tr>  
			%if data['form']['full_sticker']:
		    <tr><td>${_("RISK CODE:") or ''}:</td></tr>
			<tr><td>4. ${_("EXTREME") or ''}</td></tr>
			<tr><td>3. ${_("HIGH") or ''}</td></tr>
			<tr><td>2. ${_("MODERATE") or ''}</td></tr>
			<tr><td>1. ${_("LIGHT") or ''}</td></tr>
			<tr><td>0. ${_("INSIGNIFICANT") or ''}</td></tr>
			<tr><td>*. ${_("CHRONIC HEALTH HAZARD") or ''}</td></tr>
			%endif
		</table>			
	</div>
	<div class="product_data" >
		<table><tr><td>
		%if data['form']['full_sticker']:	
		<div class="label_product" >
		${_("PRODUCT:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="product" >
		${ prodlot.name or ''}
		</div>
		</td><tr><td>
			%if data['form']['full_sticker']:
		<div class="label_cas_number" >
		${_("CAS NUMBER:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="cas_number" >
		${ prodlot.cas_number or ''}
		</div>
		</td><tr><td>
		%if data['form']['full_sticker']:	
		<div class="label_lot" >
		${_("LOT NUMBER:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="lot" >
		${ data['form']['lot_number'] or '' }
		</div>
        </td><tr><td>
		%if data['form']['full_sticker']:	
		<div class="label_brute" >
		${_("BRUTE:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="brute" >
		${data['form']['brute'] or ''}
		</div>
		</td><tr><td>
		%if data['form']['full_sticker']:	
		<div class="label_tara" >
		${_("TARA:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="tara" >
		${data['form']['tara'] or ''}
		</div>
        </td><tr><td>
		%if data['form']['full_sticker']:	
        <div class="label_net" >
		${_("NET:") or ''}
		</div>
		%endif
		</td>
		<td>
		<div class="net" >
		${data['form']['net'] or ''}
		</div>
		</td></tr></table>
	</div>
	
	%if data['form']['full_sticker']:
    
	<div class="precautions_box" >
			<table>
				<tr>
					<td COLSPAN="2" >${_("PRECAUTIONS:") or ''}</td>
					
				</tr>
				<tr>
					<td><B>${_("FIRST AIDS:") or ''}</B></td>
					<td>${_("In case of eyes contact, wash with clean water inmediatly by 15 minutes at least and get medical atention inmediatly. In case of skin contact, clean completely with soap and water.") or ''}</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
	</div>	

	<div class="company_name_box" >
			${ company.name or ''} 
	</div>	

	<div class="company_address_box" >
			${ company.name or ''} 
	</div>	

    %endif
	
</div>	
		
%endfor
</body> 
</html>

