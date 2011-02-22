<cfcomponent>
	
	<cfscript>
		this.password = '';
		this.domain = '';
	</cfscript>
		
	<cffunction name="init" access="public">
		<cfargument name="domain" type="string" required="no" default="">
		<cfargument name="salt" type="string" required="yes">
		<cfargument name="algorithm" type="string" required="no" default="MD5">
		
		<cfscript>
			if (arguments.salt == "ENTER CUSTOM SALT" OR !len(arguments.salt)) {
				throw "This salt value is invalid. Please change your salt before using this tool.";
			}
			
			this.domain = rereplace( rereplace( arguments.domain, '(https?://)?(www\.)?', '' ), '/.*', '' );
		
			this.password = hash( this.domain & arguments.salt, arguments.algorithm );
		</cfscript>
		
	</cffunction>
	
	<cffunction name="getHash" access="public" output="false">	
		<cfscript>
			return this.password;
		</cfscript>
	</cffunction>
	
	<cffunction name="getDomain" access="public" output="false">
		<cfscript>
			return this.domain;
		</cfscript>
	</cffunction>

</cfcomponent>