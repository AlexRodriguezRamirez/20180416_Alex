/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.beans.Calculadora;
import es.albarregas.models.Division;
import es.albarregas.models.Multiplicacion;
import es.albarregas.models.Resta;
import es.albarregas.models.Suma;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
@WebServlet(name = "Controlador", urlPatterns = {"/controlador"})
public class Controlador extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Te has colado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>No puede acceder aqu&iacute; directamente.</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = null;
        boolean error = false;
        String operacion = request.getParameter("Operacion");
        int num1 = Integer.parseInt(request.getParameter("Operando1"));
        int num2 = Integer.parseInt(request.getParameter("Operando2"));
        
        Calculadora miCalculadora = new Calculadora();
        miCalculadora.setOperando1(num1);
        miCalculadora.setOperando2(num2);
        
        switch (operacion) {
            case "Suma":
                Suma miSuma = new Suma();
                miCalculadora.setSigno("+");
                miCalculadora.setResultado(miSuma.sumar(num1, num2));
                break;
                
            case "Resta":
                Resta miResta = new Resta();
                miCalculadora.setSigno("-");
                miCalculadora.setResultado(miResta.restar(num1, num2));
                break;
                
            case "Multiplicacion":
                Multiplicacion miMultiplicacion = new Multiplicacion();
                miCalculadora.setSigno("*");
                miCalculadora.setResultado(miMultiplicacion.multiplicar(num1, num2));
                break;
                
            case "Division":
                if (num2 == 0) {
                    error = true;
                }
                
                else {
                    Division miDivision = new Division();
                    miCalculadora.setSigno("/");
                    miCalculadora.setResultado(miDivision.dividir(num1, num2));
                }
                
                break;
        }
        
        if (!error) {
            if (!request.getParameter("Tipo").equals("JSTL")) {
                url = "JSP/resultado.jsp";
            }
            else {
                url = "JSP/resultadoJSTL.jsp";
            }
        }
        
        else {
            if (!request.getParameter("Tipo").equals("JSTL")) {
                url = "JSP/error.jsp";
            }
            else {
                url = "JSP/errorJSTL.jsp";
            }
        }
        
        
        request.setAttribute("datos", miCalculadora);
        request.getRequestDispatcher(url).forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
