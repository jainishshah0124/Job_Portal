<%-- 
    Document   : register
    Created on : Mar 23, 2017, 9:32:40 PM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
    function get()
    {
        newwindow=window.open('http://localhost:8080/Job_protal/terms.jsp','name','height=800,width=500');   // it takes lotsof more arguments you can use as per your needs
        if (window.focus) {newwindow.focus()}   //to set focus on new opened window
    }
</script>
              <!-- Bootstrap Core CSS -->
          <link href="startbootstrap-freelancer-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="startbootstrap-freelancer-gh-pages/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap-freelancer-gh-pages/vendor/font-awesome/fonts/../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function error() {
        if (document.myform.fname.value == null
				|| document.myform.fname.value == '') {
            alert("Enter First Name");
            document.myform.fname.focus();
            return false;
        } else if (document.myform.lname.value == null
				|| document.myform.lname.value == '') {
            alert("Enter Last Name");
            document.myform.lname.focus();
            return false;
        } else if (document.myform.txt_mob.value == null
				|| document.myform.txt_mob.value == '') {
            alert("Enter Mobile Number");
            document.myform.txt_mob.focus();
            return false;
        } else if (document.myform.txt_pass.value == null || document.myform.txt_pass.value=='') {
            alert("enter password");
            document.myform.txt_pass.focus();
            return false;
        } 
        else if (document.myform.ddl_sector.value == "0") {
            alert("Select Sector");
            document.myform.ddl_sector.focus();
            return false;
        }
        } else if (document.myform.txt_cpass.value != document.myform.txt_pass.value) {
            alert("Password Doesn't Match");
            document.myform.txt_cpass.focus();
            return false;
        }
    }
    </script>
    </head>
    <body id="page-top" class="index" style="background-color: #18BC9C;">
        <div class="top">
            <%@include file="header.jsp" %>
            <section style="padding-bottom: 0px;height: 1181px;">
    <div class="container">
    <div class="jumbotron">
        <h1>Register with us and get recruited</h1>
        <div class="row">
            <div class="col-md-6">
                <div>Become a seller</div>
                <ul class="list-unstyled" style="line-height: 2">
                    <li><span class="glyphicon glyphicon-ok"></span> See all your orders</li>
                    <li><span class="glyphicon glyphicon-ok"></span> Fast re-order</li>
                    <li><span class="glyphicon glyphicon-ok"></span> Save your favorites</li>
                    <li><span class="glyphicon glyphicon-ok"></span> Fast checkout</li>
                    <li><span class="glyphicon glyphicon-ok"></span> Get a gift <small>(only new customers)</small></li>
                    <li><a href="/read-more/"><u>Read more</u></a></li>
                </ul>
            </div>
            <div class="col-md-6">
                <script type="text/javascript">
            function getFilename()
            {
                var file=document.getElementById("dp").value;
                document.getElementById("hidden").value=file;
            }
        </script>
        <form action="register_success" name="myform" method="post" onsubmit="return getFilename()"  enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="email">First Name*</label>
                        <input type="text" class="form-control" id="email" placeholder="First Name" name="txt_fname">
                    </div>
                    <div class="form-group">
                        <label for="email">Last Name*</label>
                        <input type="text" class="form-control" id="email" placeholder="Last Name" name="txt_lname">
                    </div>
                    <div class="form-group">
                        <label for="email">Mobile Number*</label>
                        <input type="text" class="form-control" id="email" placeholder="Mobile Number" name="txt_mob">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address*</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" name="txt_email">
                    </div>
                    
                    <div class="form-group">
                        <label for="email" style="padding-right: 50px;">Gender*</label>
                        <input type="radio" class="" id="email" name="gender" value="male">Male &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" class="" id="email" name="gender" value="female">Female
                    </div>
                   
                    <div class="form-group">
                        <label for="password">Password*</label>
                        <input type="password" class="form-control" id="password" placeholder="Password" name="txt_pass">
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password*</label>
                        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password" name="txt_cpass">
                    </div>
                    <div class="form-group">
                        <label for="email">Select Display Pic</label>
                        <input type="file" name="dp" id="dp" value="" class="form-control" />
                        <input type="hidden" id="hidden" name="txt1"/>
                    </div>
                    <div class="form-group">
                        <label for="email">When Are you avaliable*</label>
                        <input type="text" class="form-control" id="email" placeholder="Answer" name="txt_info">
                    </div>
                     <div class="form-group">
                        <label for="email">Sector*</label>
                        <%
                           Connection con=Config.connection.getConnection();
//                           PreparedStatement p=con.prepareStatement("select * from tbl_sector");
                        %>
                        <select name="ddl_sector" class="form-control">
                            <option value="0">Select Sector</option>
                            <%
                           try{
                               ResultSet rs=con.prepareStatement("select * from tbl_sector").executeQuery();
                               while(rs.next())
                               {
                            %>
                               <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                               <%
                               }
                           }
                           catch(Exception e)
                           {
                               e.printStackTrace();
                           }
                           %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">State*</label>
                        
                        <select name="ddl_state" class="form-control">
<option value="">------------Select State------------</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
</select>
                        
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" required>I accept <a href="#" onclick="get();">terms & conditions</a>
                            </label>
                        </div>
                </div> <!-- /.form-group -->
                        <input type="submit" class="btn btn-primary btn-lg" value="Create my account">
                </form>
            </div>
        </div>
    </div>
    </div>  
    </section>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
