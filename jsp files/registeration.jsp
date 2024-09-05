<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Registration Form</title>
    <link rel="stylesheet" href="reg.css"> <!-- Link to your external CSS file -->
</head>
<body>
<% 
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("index1.jsp?msg=You need to Login first using your Ecap Credentials");	
	}
 %>
    <div class="box">
        <form action="registercheck.jsp" method="POST" class="form1">
            <div class="form-group">
                <label for="rollno">Roll Number:</label>
                <input type="text" id="rollno" name="rollno" placeholder="Enter Roll Number" value="<%=user%>" readonly>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter Your Name" required>
            </div>
            <div class="form-group">
                <label for="year">Year:</label>
                <select id="year" name="year" required>
                    <option value="">Select Year</option>
                    <option value="1st Year">1st Year</option>
                    <option value="2nd Year">2nd Year</option>
                    <option value="3rd Year">3rd Year</option>
                    <option value="4th Year">4th Year</option>
                </select>
            </div>
            <div class="form-group">
                <label for="branch">Branch:</label>
                <select id="branch" name="branch" required>
                    <option value="">Select Branch</option>
                    <option value="IT">IT</option>
                    <option value="CSE">CSE</option>
                    <option value="AIDS">AIDS</option>
                    <option value="EEE">EEE</option>
                    <option value="CIVIL">CIVIL</option>
                    <option value="IOT">IOT</option>
                    <option value="MECH">MECH</option>
                    <option value="ECE">ECE</option>
                </select>
            </div>
            <div class="form-group">
                <label for="route">Route Selection:</label>
                <select id="route" name="route" required>
                    <option value="">Select Route</option>
                    <option value="A1">Vijayawada</option>
                    <option value="A2">Kalidindi</option>
                    <option value="A3">Kankipadu</option>
                    <option value="A4">Korukollu</option>
                    <option value="B1">Vuyyuru</option>
                    <option value="B2">Alluru</option>
                    <option value="B3">Pamarru</option>
                    <option value="B4">Gudivada</option>
                    <option value="C1">Pedagonnuru</option>
                    <option value="C2">Jonnapadu</option>
                    <option value="C3">Singaraya Palam</option>
                    <option value="C4">Hanuman Junction</option>
                    <option value="D1">Srihari Puram</option>
                    <option value="D2">Pedaparupudi</option>
                    <option value="D3">Vadali</option>
                    <option value="D4">Pedapalaparru</option>
                    <option value="E1">Mudinepalli</option>
                    <option value="E2">Avanigadda</option>
                    <option value="E3">Kaikalur</option>
                    <option value="E4">Mopidevi</option>
                    <option value="F1">Challapalli</option>
                    <option value="F2">Bhiravapatnam</option>
                    <option value="F3">Chittorpu/Kodali</option>
                    <option value="F4">Mandavalli</option>
                    <option value="G1">Movva/Uchipudi</option>
                    <option value="G2">Lingala/Perikegudem</option>
                    <option value="G3">Kosuru</option>
                    <option value="G4">Kanukollu</option>
                    <option value="H1">Bantumilli</option>
                    <option value="H2">Machilipatnam</option>
                    <option value="H3">Tummidi</option>
                    <option value="H4">Pedana</option>
                    <option value="H5">Vadlamannadu</option>
                </select>
            </div>
            <div class="form-group">
                <label>Gender:</label>
                <input type="radio" id="male" name="gender" value="male" required>
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female" required>
                <label for="female">Female</label>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter Your Phone Number" pattern="[0-9]{10}" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" placeholder="Enter Your Address" required></textarea>
            </div>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
