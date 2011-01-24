<cfsetting showdebugoutput="false">
<cfscript>

	local = {};
	
	if(!isnull(form.domain)) {
		local.password = new password( form.domain, 'ENTER CUSTOM SALT' );
	}

</cfscript>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Password Generator</title>

<link type="text/css" rel="stylesheet" href="css/reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/core.css" />

<script language="javascript" type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script language="javascript" type="text/javascript" src="js/global.js"></script>

</head>

<body>
<div class="wrap">
	
	<div class="box">
		<form action="" method="post">
		<h1>
			<img src="css/images/icon-password.png" alt="" />
			Password Generator
			<button class="btn" type="submit">
				<img src="css/images/icon-submit.png" alt="" />
				<span>Generate</span>
			</button>
		</h1>
		<div class="item">
			<label>Domain</label>
			<input type="text" id="domain" name="domain" value="<cfif !isnull(local.password)><cfoutput>#local.password.getDomain()#</cfoutput></cfif>" />
		</div>			
		</form>	
	
		<div class="item">
			<label>Password</label>
			<input type="text" id="password" name="password" value="<cfif !isnull(local.password)><cfoutput>#local.password.getHash()#</cfoutput></cfif>" />
		</div>
	</div>
	
</div>
</body>
</html>
