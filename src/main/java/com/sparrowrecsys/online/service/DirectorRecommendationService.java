package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Director;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * DirectorRecommendationService, provide director recommendation service based on job title
 */

public class DirectorRecommendationService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException,
            IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //jobTitle - director job title
            String jobTitle = request.getParameter("jobtitle");
            //number of returned directors
            String size = request.getParameter("size");
            //ranking algorithm
            String sortby = request.getParameter("sortby");
            //fetch directors by job title
            List<Director> directors = DataManager.getInstance().getDirectorsByJobTitle(jobTitle, Integer.parseInt(size), sortby);

            //convert director list to json format and return
            ObjectMapper mapper = new ObjectMapper();
            String jsonDirectors = mapper.writeValueAsString(directors);
            response.getWriter().println(jsonDirectors);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("");
        }
    }
}
