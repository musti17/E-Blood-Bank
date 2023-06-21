<%@page import="java.sql.*" %>

<%@page import="org.json.simple.*" %>
<%@page import="org.json.simple.parser.*" %>
<%@ page import="org.json.simple.JSONArray" %>

<%
    // Connect to database
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root", "fast1234");

        // Execute query
        String query = "SELECT bloodgroup, units FROM stock";
        stmt = conn.prepareStatement(query);
        rs = stmt.executeQuery();

        // Convert resultset to JSON
        JSONArray jsonArray = new JSONArray();
        while (rs.next()) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("bloodgroup", rs.getString("bloodgroup"));
            jsonObject.put("units", rs.getInt("units"));
            jsonArray.add(jsonObject);
        }

        // Set response content type
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Write JSON data to response
        response.getWriter().write(jsonArray.toJSONString());

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { rs.close(); } catch (Exception e) { /* ignored */ }
        try { stmt.close(); } catch (Exception e) { /* ignored */ }
        try { conn.close(); } catch (Exception e) { /* ignored */ }
    }
%>
