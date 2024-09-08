package Demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class demo1 {
    private Connection con;
    private static Map<String, Integer> seatsMap = new HashMap<>();

    // Constructor to establish the database connection
    public demo1() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded...");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "");
            System.out.println("Connected to database");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // Static block to initialize the seats for each route and year combination
    static {
        initializeSeats();
    }

    // Method to initialize seats for each route and year combination
    private static void initializeSeats() {
        String[] routes = {"A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4",
                           "D1", "D2", "D3", "D4", "E1", "E2", "E3", "E4", "F1", "F2", "F3", "F4",
                           "G1", "G2", "G3", "G4", "H1", "H2", "H3", "H4", "H5"};
        String[] years = {"1st Year", "2nd Year", "3rd Year", "4th Year"};

        for (String route : routes) {
            for (String year : years) {
                seatsMap.put(route + "_" + year, 56); // Initialize each route and year combination with 56 seats
            }
        }
    }

    // Method to allocate a seat
    public synchronized int allocateSeat(String route, String preferredYear) {
        String[] years = {"1st Year", "2nd Year", "3rd Year", "4th Year"};
        String key;
        int seats;

        // First try the preferred year
        key = route + "_" + preferredYear;
        seats = seatsMap.getOrDefault(key, 0);
        if (seats > 0) {
            seatsMap.put(key, seats - 1);
            return seats - 1;
        }

        // Try other years if the preferred year is full
        for (String year : years) {
            if (!year.equals(preferredYear)) {
                key = route + "_" + year;
                seats = seatsMap.getOrDefault(key, 0);
                if (seats > 0) {
                    seatsMap.put(key, seats - 1);
                    return seats - 1;
                }
            }
        }

        return -1; // No seats available in any year for the chosen route
    }

    // Method to get the number of seats available for a given route and year
    public int getSeats(String route, String year) {
        return seatsMap.getOrDefault(route + "_" + year, 0);
    }

    // Method for student login check
    public String loginCheck1(String username, String password) {
        return loginCheck("studentecap", username, password);
    }

    // Method for faculty login check
    public String loginCheck2(String username, String password) {
        return loginCheck("facultyecap", username, password);
    }

    // Method for admin login check
    public String loginCheck3(String username, String password) {
        return loginCheck("adminecap", username, password);
    }

    // Generic login check method
    private String loginCheck(String tableName, String username, String password) {
        String user = null;
        String sql = "SELECT * FROM " + tableName + " WHERE User=? AND Password=?";
        try (PreparedStatement ptm = con.prepareStatement(sql)) {
            ptm.setString(1, username);
            ptm.setString(2, password);
            try (ResultSet rst = ptm.executeQuery()) {
                if (rst.next()) {
                    user = rst.getString("User");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    // Method to check if a roll number already exists
    public boolean isRollNumberExists(String rollno) {
        String sql = "SELECT COUNT(*) FROM registrations WHERE rollno = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, rollno);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method for user registration with transaction management
    public String registerWithTransaction(String rollno, String name, String year, String branch, String route, String gender, String phone, String address, int busno) {
        try {
            con.setAutoCommit(false); // Start transaction
            
            if (isRollNumberExists(rollno)) {
                con.rollback();
                return "<h2>Roll number already exists. Please use a different roll number.</h2>";
            }

            String registrationResult = register(rollno, name, year, branch, route, gender, phone, address, busno);
            if (registrationResult.contains("successful")) {
                int allocatedSeats = allocateSeat(route, year);
                if (allocatedSeats < 0) {
                    con.rollback();
                    return "<h2>No seats available for the selected route and year. Registration failed.</h2>";
                }
            } else {
                con.rollback();
                return registrationResult;
            }

            con.commit(); // Commit transaction
            return registrationResult;
        } catch (Exception e) {
            try {
                con.rollback(); // Rollback transaction on error
            } catch (Exception rollbackEx) {
                rollbackEx.printStackTrace();
            }
            return "<h2>Error: " + e.getMessage() + "</h2>";
        } finally {
            try {
                con.setAutoCommit(true); // Reset auto-commit
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Method for user registration
    public String register(String rollno, String name, String year, String branch, String route, String gender, String phone, String address, int busno) {
        String sql = "INSERT INTO registrations(rollno, name, year, branch, route, gender, phone, address, busno) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, rollno);
            ps.setString(2, name);
            ps.setString(3, year);
            ps.setString(4, branch);
            ps.setString(5, route);
            ps.setString(6, gender);
            ps.setString(7, phone);
            ps.setString(8, address);
            ps.setInt(9, busno);
            int result = ps.executeUpdate();
            if (result > 0) {
                return "<h2>Registration successful!</h2>";
            } else {
                return "<h2>Registration failed. Please try again.</h2>";
            }
        } catch (Exception e) {
            return "<h2>Error: " + e.getMessage() + "</h2>";
        }
    }
}
