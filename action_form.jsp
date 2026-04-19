<%
    String sname,spass,sgen,scon,scom;
    sname = request.getParameter("T1");
    spass = request.getParameter("P1");
    String shobb[] = request.getParameterValues("ch1");
    sgen = request.getParameter("r1");
    scon = request.getParameter("country");
    scom = request.getParameter("T2");

        out.println("<table border='0' border-color='black'>");
        out.println("<tr><th>Candidate Details</th></tr>");
        
        out.println("<tr><td>Name:</td><td>"+sname+"</td></tr>");
        out.println("<tr><td>Password:</td><td>"+spass+"</td></tr>");
        out.println("<tr><td>Hobbies:</td><td>");
%>
<%
            if(shobb != null){
                for(int i=0;i<shobb.length;i++){
                    out.println(shobb[i]+",");
            }
        }
        else{
            out.println("--");
        }
        out.println("</td></tr>");
        out.println("<tr><td>Gender:</td><td>"+sgen+"</td></tr>");
        out.println("<tr><td>Country:</td><td>"+scon+"</td></tr>");
        out.println("<tr><td>Comments:</td><td>"+scom+"</td></tr>");

         out.println("</table>");
%>
   
