<html>
<head>
	 <title>Virtual POS Tester</title>
	 <link href="css/main.css" rel="stylesheet" type="text/css">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
     <meta name="layout" content="main" />
     <r:require module="bootstrap"/>
</head>
<body>
	<div class="container-fluid">
		<h1>Welcome to the VPOS Test application</h1> 
		<br/>This can be used to test the Virtual POS feature within PPOS.  Follow these easy steps:
		<br/>
		<ol>
			<li>Click on the <strong>Configuration</strong> menu option and edit the configuration entries to set the server name field to match your machine name, and click the Update button. The Server and Port number fields are the only fields available for editting, on purpose, as you should not need to change anything else!</li>
			<li>Click on <strong>Price Lookup</strong>, <strong>Txn Create</strong> or <strong>Product Lookup</strong> to call that API.</li>
			<li>Update any fields, like SKU or quantity and then click Submit.</li>
			<li>The application will generate the necessary XML, submit the request to the web service and return a response.</li>
		</ol>
		<br/>
		<h4>Note: The application uses an 'in-memory' database to save configuration</h4>
		This means that configuration changes may need to be re-entered if the application has been restarted. Also, there is 1 configuration entry for each API call, like Product Lookup.  As a result, two people can not use the same instance of this test tool at the same time to test on different PPOS server instances.
	</div>
</body>
</html>