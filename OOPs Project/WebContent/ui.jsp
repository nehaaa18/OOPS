<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.details {
  background-color: #eb4e24;
  height: 800px;
}
input[type=text],
#uexperience,
#equalification,
#roles {
  width: 86%;
  padding: 7px 7px;
  border: #c1c1c1 solid 1px;
  height: 40px;
  background: none;
  /*border-radius: 5px;*/
}
select {
  width: 28%;
  height: 37px;
  padding: 0 1em;
  background: none;
  border: #c1c1c1 solid 1px;
}
.border {
  border: #dbdbdb solid 1px;
}
table td {
  padding: 10px;
}
input[type=file] {
  border: #c1c1c1 solid 1px;
  height: 40px;
  padding: 8px 7px;
  width: 86%;
}
label {
  color: red;
}
#captcha {
  width: 77%;
}
.fa {
  font-size: 2em !important;
  color: #fff;
  padding-left: 15px;
}
form {
  margin-top: 15%;
  /*border: 1px solid;*/
}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
  <div class="container">
    <div class="col-lg-12">
      <div class="col-lg-6">
        <form>
          <table width="100%">
            <tbody>
              <tr>
                <td>
                  First Name
                  <label>*</label>
                  <br>
                  <input type="text" name="fname" id="fname" class="">
                </td>
              </tr>
              <tr>
                <td>
                  Email Address
                  <label>*</label>
                  <br>
                  <input type="text" name="email" id="email" class="">
                </td>
              </tr>
              <tr>
                <td>
                  Job position
                  <label>*</label>
                  <br>
                  <input type="text" name="position" id="position" class="">
                </td>
              </tr>
              <tr>
                <td>
                  Current Employer
                  <label>*</label>
                  <br>
                  <input type="text" name="currentemp" id="currentemp" class="">
                </td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
      <div class="col-lg-6 details">
        <form>
          <table width="100%">
            <tbody>
              <tr>
                <td>
                  Last Name
                  <label>*</label>
                  <br>
                  <input type="text" name="lname" id="lname" class="">
                </td>
              </tr>
              <tr>
                <td>
                  Mobile No.
                  <label>*</label>
                  <br>

                  <input type="text" name="phone" id="phone">
                </td>
              </tr>
              <tr>
                <td>
                  Experience
                  <label>*</label>
                  <br>
                  <select id="uexperience" class="decorated">
                    <option id="selectHeader">--------- Select Experience --------------</option>
                    <option value="1-2 YEAR">1-2 Years</option>
                    <option value="1-3 YEAR">1-3 Years</option>
                    <option value="2-4 YEAR">2-4 Years</option>
                    <option value="4-6 YEAR">4-6 Years</option>
                    <option value="6-10 YEAR">6-10 Years</option>
                    <option value=">10 YEAR">&gt; 10 Years</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>
                  Enter code Here
                  <label>*</label>
                  <br>
                  <input type="text" name="captcha" id="captcha"><i class="fa fa-refresh" aria-hidden="true"></i>
                </td>
              </tr>

            </tbody>
          </table>
        </form>
      </div>
    </div>
  </div>
</body>
</html>