import javax.swing.*;
import java.awt.*;
import java.sql.*;

public class StudentDetailsUI extends JFrame {
    private JTextField nameField = new JTextField(20);
    private JTextArea resultArea = new JTextArea();

    public StudentDetailsUI() {
        setTitle("Student Course Details");
        setSize(700, 500);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new BorderLayout());

        JPanel inputPanel = new JPanel();
        inputPanel.add(new JLabel("Student Name:"));
        inputPanel.add(nameField);

        JButton searchBtn = new JButton("Search");
        JButton clearBtn = new JButton("Clear");

        inputPanel.add(searchBtn);
        inputPanel.add(clearBtn);
        add(inputPanel, BorderLayout.NORTH);

        resultArea.setEditable(false);
        resultArea.setFont(new Font("Monospaced", Font.PLAIN, 14));
        resultArea.setLineWrap(true);
        resultArea.setWrapStyleWord(true);
        add(new JScrollPane(resultArea), BorderLayout.CENTER);

        searchBtn.addActionListener(e -> {
            resultArea.setText("");
            String name = nameField.getText().trim();
            if (!name.isEmpty()) {
                setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
                fetchDetails(name);
                setCursor(Cursor.getDefaultCursor());
            } else {
                resultArea.setText("⚠️ Please enter a student name.");
            }
        });

        clearBtn.addActionListener(e -> {
            nameField.setText("");
            resultArea.setText("");
        });
    }

    private void fetchDetails(String name) {
        String query = """
            SELECT C.Title, C.Department, C.Instructor, C.YearOffered, E.Grade,
                   TO_CHAR(E.DateEnrolled, 'YYYY-MM-DD') as DateEnrolled,
                   TO_CHAR(E.LastUpdated, 'YYYY-MM-DD') as LastUpdated,
                   LISTAGG(DISTINCT T.Tag, ', ') WITHIN GROUP (ORDER BY T.Tag) AS Tags
            FROM Students S
            JOIN Enrollments E ON S.StudentID = E.StudentID
            JOIN Courses C ON C.CourseID = E.CourseID
            LEFT JOIN CourseTags T ON C.CourseID = T.CourseID
            WHERE TRIM(UPPER(S.Name)) = TRIM(UPPER(?))
            GROUP BY C.Title, C.Department, C.Instructor, C.YearOffered, E.Grade, E.DateEnrolled, E.LastUpdated
            ORDER BY C.Title
        """;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();

            StringBuilder sb = new StringBuilder();
            int count = 0;

            while (rs.next()) {
                count++;
                sb.append("📘 Course Title : ").append(rs.getString("Title")).append("\n");
                sb.append("🏢 Department   : ").append(rs.getString("Department")).append("\n");
                sb.append("👨‍🏫 Instructor  : ").append(rs.getString("Instructor")).append("\n");
                sb.append("📅 Year Offered : ").append(rs.getInt("YearOffered")).append("\n");
                sb.append("📝 Grade        : ").append(rs.getString("Grade")).append("\n");
                sb.append("📆 Enrolled On  : ").append(rs.getString("DateEnrolled")).append("\n");
                sb.append("🛠️ Last Updated : ").append(rs.getString("LastUpdated")).append("\n");
                String tags = rs.getString("Tags");
                sb.append("🏷️ Tags         : ").append(tags != null ? tags : "None").append("\n");
                sb.append("------------------------------------------------------------\n");
            }

            if (count > 0) {
                sb.append("✅ Total Courses Found: ").append(count);
                resultArea.setText(sb.toString());
            } else {
                resultArea.setText("⚠️ No records found for student: " + name);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            resultArea.setText("❌ Error fetching data. Please try again.");
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new StudentDetailsUI().setVisible(true));
    }
}

//
//
//import java.sql.*;
//
//public class StudentDetailsUI {
//    public static void main(String[] args) {
//        String url = "jdbc:oracle:thin:@//localhost:1521/XEPDB1"; // Replace with your DB URL
//        String username = "Itachi"; // Replace with your DB username
//        String password = "Genjutsu"; // Replace with your DB password
//
//        try (
//                Connection conn = DriverManager.getConnection(url, username, password);
//                Statement stmt = conn.createStatement()
//        ) {
//            // Create table
//            String createTable = "CREATE TABLE Sales (" +
//                    "id NUMBER PRIMARY KEY, " +
//                    "item VARCHAR2(100), " +
//                    "quantity NUMBER, " +
//                    "price NUMBER)";
//            try {
//                stmt.executeUpdate(createTable);
//            } catch (SQLException e) {
//                System.out.println("Table might already exist. Skipping table creation.");
//            }
//
//            // Insert records
//            String[] insertQueries = {
//                    "INSERT INTO Sales VALUES (1, 'Laptop', 2, 1500.00)",
//                    "INSERT INTO Sales VALUES (2, 'Mouse', 5, 25.00)",
//                    "INSERT INTO Sales VALUES (3, 'Keyboard', 3, 45.00)",
//                    "INSERT INTO Sales VALUES (4, 'Monitor', 1, 300.00)",
//                    "INSERT INTO Sales VALUES (5, 'Printer', 2, 120.00)"
//            };
//
//            for (String query : insertQueries) {
//                try {
//                    stmt.executeUpdate(query);
//                } catch (SQLException e) {
//                    System.out.println("Duplicate or failed insert: " + e.getMessage());
//                }
//            }
//
//            // Retrieve and display records
//            ResultSet rs = stmt.executeQuery("SELECT * FROM Sales");
//            System.out.println("ID\tItem\t\tQuantity\tPrice");
//            System.out.println("---------------------------------------------");
//
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String item = rs.getString("item");
//                int quantity = rs.getInt("quantity");
//                double price = rs.getDouble("price");
//
//                System.out.printf("%d\t%-10s\t%d\t\t%.2f\n", id, item, quantity, price);
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
//
//import java.sql.*;
//
//public class StudentDetailsUI {
//    public static void main(String[] args) {
//        String url = "jdbc:oracle:thin:@//localhost:1521/XEPDB1"; // Replace with your DB URL
//        String username = "Itachi"; // Replace with your DB username
//        String password = "Genjutsu"; // Replace with your DB password
//
//
//
//        Object[][] salesData = {
//                {201, "2025-04-15", 1500.25},
//                {202, "2025-04-16", 2750.00},
//                {203, "2025-04-17", 3600.90},
//                {204, "2025-04-18", 4200.10},
//                {205, "2025-04-19", 2999.99}
//        };
//
//        try {
//
//            Connection conn = DriverManager.getConnection(url, user, password);
//
//
//            String insertQuery = "INSERT INTO sales (sale_id, sale_date, amount) VALUES (?, ?, ?)";
//            PreparedStatement pstmt = conn.prepareStatement(insertQuery);
//
//
//            for (Object[] sale : salesData) {
//                pstmt.setInt(1, (int) sale[0]); // sale_id
//                pstmt.setDate(2, Date.valueOf((String) sale[1])); // sale_date
//                pstmt.setDouble(3, (double) sale[2]); // amount
//
//                pstmt.executeUpdate();
//            }
//
//            System.out.println("Modified sales data inserted successfully.");
//
//            pstmt.close();
//            conn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
//
