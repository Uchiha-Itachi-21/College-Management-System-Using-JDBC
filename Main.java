import java.sql.*;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@//localhost:1521/XEPDB1";
        String username = "Itachi";
        String password = "Genjutsu";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("Connected to Oracle database!");

            String query = "SELECT S.Name, C.Title, E.Grade " +
                    "FROM Enrollments E " +
                    "JOIN Students S ON E.StudentID = S.StudentID " +
                    "JOIN Courses C ON E.CourseID = C.CourseID";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                String studentName = rs.getString("Name");
                String courseTitle = rs.getString("Title");
                String grade = rs.getString("Grade");

                System.out.println("Student: " + studentName + " | Course: " + courseTitle + " | Grade: " + grade);
            }

            rs.close();
            stmt.close();
            conn.close();
            System.out.println("Connection closed.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
