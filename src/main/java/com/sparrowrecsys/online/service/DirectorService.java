package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Director;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * DirectorService, return information of a specific director
 */

public class DirectorService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //get director id via url parameter
            String directorId = request.getParameter("id");

            //get director object from DataManager
            Director director = DataManager.getInstance().getDirectorById(Integer.parseInt(directorId));

            //convert director object to json format and return
            if (null != director) {
                ObjectMapper mapper = new ObjectMapper();
                String jsonDirector = mapper.writeValueAsString(director);
                response.getWriter().println(jsonDirector);
            } else {
                response.getWriter().println("");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("");
        }
    }
}
