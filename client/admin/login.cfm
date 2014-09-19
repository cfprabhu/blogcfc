<cfsetting enablecfoutputonly=true>
<cfprocessingdirective pageencoding="utf-8">
<!---
	Name         : C:\projects\blogcfc5\client\admin\login.cfm
	Author       : Raymond Camden 
	Created      : 04/13/06
	Last Updated : 10/28/06
	History      : Fix for timeout w/ enclosure (rkc 10/28/06)
--->


<cfmodule template="../tags/adminlayout.cfm" title="Logon">

<cfset qs = cgi.query_string>
<cfset qs = reReplace(qs, "logout=[^&]+", "")>

<cfoutput>


		<div class="form-box" id="login-box">
            <div class="header">Sign In</div>
            	<form name="loginform" action="#cgi.script_name#?#qs#" method="post" enctype="multipart/form-data">
            		<!--- copy additional fields --->
					<cfloop item="field" collection="#form#">
						<!--- the isSimpleValue is probably a bit much.... --->
						<cfif field is "enclosure" and len(trim(form.enclosure))>
							<input type="hidden" name="enclosureerror" value="true">
						<cfelseif not listFindNoCase("username,password", field) and isSimpleValue(form[field])>
							<input type="hidden" name="#field#" value="#htmleditformat(form[field])#">
						</cfif>
					</cfloop>
                <div class="body bg-gray">
                    <div class="form-group controls">
                        <input name="username" type="text" required="" placeholder="Username" class="form-control" id="username">
                    </div>
                    <div class="form-group controls">
                        <input name="Password" type="password" required="" placeholder="Password" class="form-control" maxlength="15" id="password">
                    </div>          
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block">#application.resourceBundle.getResource("login")#</button>  
                </div>
            </form>
        </div>

<script language="javaScript" TYPE="text/javascript">
<!--
document.forms[0].username.focus();
//-->
function openAbout(){
	document.getElementById('about').style.display = 'block';
}
function closeAbout(){
	document.getElementById('about').style.display = 'none';
}
</script>

<script type="text/javascript">
            $(function(){   
                $('form').validate({    
                    highlight: function(element, errorClass, validClass){
                        $(element).parents("div.form-group").addClass("has-error").removeClass("has-success");
                    },
                    unhighlight: function(element, errorClass, validClass){
                        $(element).parents(".has-error").removeClass("has-error").addClass("has-success");
                    },
                    errorPlacement: function($error, $element){
                        $error.addClass("help-block error").appendTo($element.parents("div.controls"));
                    }
                });
            }); 
</script>

</cfoutput>

</cfmodule>

<cfsetting enablecfoutputonly=false>