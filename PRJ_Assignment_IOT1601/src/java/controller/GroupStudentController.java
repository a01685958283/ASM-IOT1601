/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import controller_auth.BaseAuthenticationController;
import dal.SessionDBContext;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Account;
import model.Attandance;
import model.Session;
import model.Student;


/**
 *
 * @author DAT
 */
public class GroupStudentController extends BaseAuthenticationController {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 


    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response, Account account) throws ServletException, IOException {
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response, Account account) throws ServletException, IOException {
        int sesid = Integer.parseInt(request.getParameter("id"));
        SessionDBContext sesDB = new SessionDBContext();
        Session sesStd = sesDB.get(sesid);
        request.setAttribute("sesStd", sesStd);
        request.getRequestDispatcher("../view/lecturer/studentlist.jsp").forward(request, response);}
}
