<%@page import="Demo.demo1"%>
<%
    // Retrieve form parameters
    String rollno = request.getParameter("rollno");
    String name = request.getParameter("name");
    String year = request.getParameter("year");
    String branch = request.getParameter("branch");
    String route = request.getParameter("route");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    // Allocate seat
    demo1 demo = new demo1(); // Ensure you instantiate your demo1 class
    int seats = demo.allocateSeat(route, year);
    int BusNo = 0;

    if (seats >= 0) {
        BusNo = Integer.parseInt(route.substring(1, 2)); // Extract bus number from route, e.g., "A1" -> 1
        out.println("<h2>Seat allocated successfully in Bus No: " + BusNo + ". Seats left: " + seats + "</h2>");
    } else {
        out.println("<h2>No seats available for the selected route and year. Checking other years for available seats...</h2>");
        
        // Check other years
        String[] years = {"1st Year", "2nd Year", "3rd Year", "4th Year"};
        boolean seatFound = false;
        
        for (String otherYear : years) {
            if (!otherYear.equals(year)) {
                seats = demo.allocateSeat(route, otherYear);
                if (seats >= 0) {
                    BusNo = Integer.parseInt(route.substring(1, 2)); // Extract bus number from route
                    out.println("<h2>Seat allocated successfully in Bus No: " + BusNo + " for " + otherYear + ". Seats left: " + seats + "</h2>");
                    seatFound = true;
                    break;
                }
            }
        }

        if (!seatFound) {
            out.println("<h2>No seats available for the selected route in any year.</h2>");
        }
    }

    // SQL query to insert registration details using methods in demo1 class
    String result = demo.register(rollno, name, year, branch, route, gender, phone, address, BusNo);

    out.println(result);
%>
