﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module1.aspx.cs" Inherits="INTROSE_JGC.Module1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style>
    
    .login{
        width: 360px;
        padding: 8% 0 0;
        margin: auto;
    }
    
    .pass{
        display: inline-block;
        position: relative;
        left: 165px;
        font-size: 12px;
        font-family: sans-serif;
    }
    
    body{
        padding:0;
        margin:0;
    }

    
    header{
        background-color: black;
    }
    
    footer{
        background-color: lightgrey;
        position: absolute;
        right: 0;
        bottom: 0;
        left: 0;
        padding: 15px;
        text-align: left;
        font-family: sans-serif;
        font-size:14px;
    }
    
    .foot{
        font-family: sans-serif;
        font-size: 12px;
    }
    
    .imgcontainer{
        position: relative;
        display: inline-block;
    }
    
    .home{
        display: inline-block;
        color: white;
        position: relative;
        font-size: 15px;
        bottom: 45px;
        margin-left: 12px;
        margin-right: 10px;
        left: 20px;
        font-family: sans-serif;

    }

    .pass{
        display: inline-block;
        position: relative;
        font-size: 12px;
        font-family: sans-serif;
        left: 260px;
        bottom: 19px;
    }
    .dropbtn {
        background-color: #4CAF50;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }
    a:link {
        text-decoration: none;
        color: black;
            
    }

    a:visited {
        text-decoration: none;
        color: black;
    }

    a:hover {
        text-decoration: underline;
    }

    a:active {
        text-decoration: underline;
    }
    a.menu:link {
        text-decoration: none;
        color: white;
            
    }

    a.menu:visited {
        text-decoration: none;
        color: white;
    }

    form{
        text-align: left;
        margin: 0 auto 20px;
        padding 45px;
    }



    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        margin: 0 0 15px;
        padding: 10px;
        display: inline-block;
        position: relative;
        width:400px;
        float: left;
        overflow-y: scroll;
        height: 300px;
    }


    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        width: 200px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }

    caption{
        font-family: sans-serif;
    }
    
    .textboxid{
        height:100px;
        font-size:12pt;
        
    }

    textarea {
        width: 300px;
        padding: 10px;
        height: 100px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        resize: none;
        display: inline-block;
        vertical-align: text-top;
    }
    
    input[type=text], input[type=date],input[type=number], select {
    width: 300px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: none;
    display: inline-block;
    vertical-align: text-top;
    }
.info {
    border-radius: 5px;
    padding: 20px;
    float: left;
    width: 600px;
    font-family: sans-serif;
}
.col-25 {
    width: 150px;
    display: inline-block;
    padding: 10px;
}

/* Floating column for inputs: 75% width */
.col-75 {
  width: 200px;
  margin-top: 6px;
        padding: 15px;
    display: inline-block;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
    
     form button{
        font-family: sans-serif;
        text-transform: uppercase;
        outline: 0;
        background: #4CAF50;
        width: 30%;
        border: 0;
        margin-top: 10px;
        margin-right:117px;
        display: inline-block;
        padding: 10px;
        color: #FFFFFF;
        font-size: 14px;
        
    }
    
     .submit {
        font-family: sans-serif;
        text-transform: uppercase;
        outline: 0;
        background: #4CAF50;
        width: 20%;
        border: 0;
        margin: 30px;
        padding: 10px;
        color: #FFFFFF;
        font-size: 14px;
        float: right;
        
    }
    .tabletitle{
        font-family:sans-serif;
        padding: 10px;
        margin: 10px;

        }
</style>

<head runat="server">
    <title>Module 1</title>
    <script runat="server">
    
    </script>
</head>
<body>
    <header>
        <div class="imgcontainer">
            <a href="/Default.aspx"><img src="jgc.png" alt="Avatar" class="avatar"> </a>
        </div>
        <div class = "home">
            <a href="/Default.aspx" class = "menu">Home</a>
        </div>
        <div class = "home dropdown">
                <div class = "dropdown">Projects</div>
                <div class="dropdown-content">
                    <a href="/Module1.aspx">Module 1</a>
                    <a href="/Module2.aspx">Module 2</a>
                    <a href="#">Module 6</a>
                </div>
            </div>
            <div class = "home dropdown">
                <div class = "dropdown">Admin/IT</div>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div>
        <div class = "home">
            <a href="#" class = "menu">About</a>
        </div>
        <div class = "home">
            <a href="#" class = "menu">Contact</a>
        </div>
        <div class = "home">
            <a href="/Login.aspx" class = "menu">Login</a>
        </div>
    </header>
    <form class = "info">
        <div class="row">
        <div class="col-25">
        Project:
        </div>
        <div class="col-75">
        <select>
        <option value="dept1">PROJ1</option>
        <option value="dept2">PROJ2</option>
        <option value="dept3">PROJ3</option>
        <option value="dept4">PROJ4</option>
        </select><br>
        </div>
        </div>
        <div class="row">
        <div class="col-25">
        Category:
        </div>
        <div class="col-75">
        <select class = "cat">
        <option value="cat1">CAT1</option>
        <option value="cat2">CAT2</option>
        <option value="cat3">CAT3</option>
        <option value="cat4">CAT4</option>
        </select><br>
        </div>
        </div>
        <div class="row">
        <div class="col-25">
        Material:
        </div>
        <div class="col-75">
        <select class = "cat">
        <option value="mat1">MAT1</option>
        <option value="mat2">MAT2</option>
        <option value="mat3">MAT3</option>
        <option value="mat4">MAT4</option>
        </select><br>
        </div>
        </div>
        <div class="row">
        <div class="col-25">
        Quantity:
        </div>
        <div class="col-75">
        <input type="number" name="numofmat"><br>
        </div>
        </div>
        <div class="row">
        <div class="col-25">
        Remarks:
        </div>
        <div class="col-75">
        <textarea name="remarks" ></textarea><br>
        </div>
        </div>
           <button type="submit">Cancel</button>
           <button type="submit">Add</button>
    </form>
    <div class = "tabletitle">Material List</div>
    <table>

      <tr>
        <th>Material</th>
        <th>Quantity</th> 
        <th>Remarks</th>
      </tr>
      <tr>
        <td>Material 1</td>
        <td>10</td> 
        <td>...</td>
      </tr>

            
    </table>
       <button type="submit" class = "submit">Submit</button>
    <footer>
        <div class ="foot"> &copy; JGC Philippines INC.</div>
    </footer>
</body>
</html>