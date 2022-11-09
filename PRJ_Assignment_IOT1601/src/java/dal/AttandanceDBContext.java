/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author DAT
 */
public class AttandanceDBContext extends DBContext<Attandance> {

    public ArrayList<Attandance> listattendances(int id) {
        ArrayList<Attandance> listsatt = new ArrayList<>();
        try {
            String sql = " SELECT a.[sesid] \n"
                    + "      ,[stdid]\n"
                    + "      ,[present]\n"
                    + "  FROM [dbo].[Attandance] a\n"
                    + "  join Session s on s.sesid = a.sesid\n"
                    + "  where s.gid = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session ses = new Session();
                Student s = new Student();
                Attandance a = new Attandance();

                ses.setId(rs.getInt("sesid"));

                a.setPresent(rs.getBoolean("present"));

                s.setId(rs.getString("stdid"));             

                a.setSession(ses);
                a.setStudent(s);
                listsatt.add(a);

            }

        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listsatt;
    }

    @Override
    public void insert(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attandance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attandance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
