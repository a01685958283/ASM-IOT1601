/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import controller_auth.BaseAuthenticationController;
import dal.AttandanceDBContext;
import dal.GroupDBContext;
import dal.SessionDBContext;
import dal.StudentDBContext;
import dal.SubjectDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.Account;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;
import model.Subject;

/**
 *
 * @author DAT
 */
public class ReportController extends BaseAuthenticationController {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        SubjectDBContext subdb = new SubjectDBContext();
        ArrayList<Subject> listSubject = subdb.listSubject();
        request.setAttribute("sub", listSubject);
        
        String subid = request.getParameter("subid");

        GroupDBContext grdb = new GroupDBContext();
        ArrayList<Group> listgroup = grdb.listGroup(subid);
        request.setAttribute("group", listgroup); 
        
        String groupid_raw = request.getParameter("groupid");
        if (groupid_raw != null) {
            int groupid = Integer.parseInt(groupid_raw);

            StudentDBContext sdb = new StudentDBContext();
            ArrayList<Student> students = sdb.listStudentInAGroup(groupid);
            request.setAttribute("students", students);

            SessionDBContext sesdb = new SessionDBContext();
            ArrayList<Session> sessions = sesdb.listSessionsDates(groupid);
            request.setAttribute("sessions", sessions);

            AttandanceDBContext adb = new AttandanceDBContext();
            ArrayList<Attandance> attendances = adb.listattendances(groupid);
            request.setAttribute("attendances", attendances);

            request.getRequestDispatcher("/view/lecturer/report.jsp").forward(request, response);
        }
    }

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp);
        }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp);
        }

}
