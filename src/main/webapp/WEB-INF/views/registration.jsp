<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<h1>Registration Form</h1><br />

        <form:form   modelAttribute="student"  commandName="student"  action="registration" method="post" >

            <table class="table table-dark">



                <tr><td>Id : </td><td><form:input path="id" />
                </td></tr>
                <tr>
                    <td>FirstName : </td><td><form:input path="firstName" />

        		</td>
                    <td colspan="2"><form:errors path="firstName" cssStyle="color:red;"/></td>
                </tr>

                <tr>
                    <td>LastName : </td><td><form:input path="lastName" />
				</td>
                    <td colspan="2"><form:errors path="lastName" cssStyle="color:red;"/></td>

                </tr>
                   <tr><td>Email : </td><td><form:input path="email" />
                </td>
                    <td colspan="2"><form:errors path="email" cssStyle="color:red;"/></td>
                </tr>
                <tr><td>Birthday : </td><td><form:input path="birthday" placeholder="MM/dd/yyyy" />
				</td>
                    <td colspan="2"><form:errors path="birthday" cssStyle="color:red;"/></td>
                </tr>
                <tr><td>Phone : </td><td>
                    <div class="input-group mb-3">
                    <form:input path="phone.area" cssStyle='width:3em'  />
                   <form:input path="phone.prefix" cssStyle='width:3em'  placeHolder="Prefix " />
				   <form:input path="phone.number" cssStyle='width:4em' placeHolder="Number "  />
                    </div>
				</td>
                    <td colspan="2"><form:errors path="phone.area"  placeHolder="Code Area" cssStyle="color:red;"/></td>
                </tr>
                 <tr><td>

                     Gender : </td><td>
                     <div class="form-row align-items-center">
                     <form:select path="gender"  class="custom-select mr-sm-2">
                            <form:option value="" label="Select Gender"/>
                            <form:option value="Male" label="Male"/>
                            <form:option value="Female" label="Female"/>
                  </form:select>
                     </div>
                 </td>
                     <td colspan="2"><form:errors path="gender" cssStyle="color:red;"/></td>
                 </tr>
                    
                 <tr><td colspan="2"><input type="submit" value="Save Changes" /></td>

                 </tr>


                <tr>
                    <td colspan="3">
                        <ul class="list-group">
                            <form:errors path="*" cssStyle="color:red;"/>
                        </ul>
                    </td>
                </tr>

            </table>
                        
        </form:form>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $('input').addClass('form-control');
    });
</script>
</html>
