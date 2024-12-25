package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Actor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * ActorRecommendationService, provide actor recommendation service based on job title
 */

public class ActorRecommendationService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException,
            IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //jobTitle - actor job title
            String jobTitle = request.getParameter("jobtitle");
            //number of returned actors
            String size = request.getParameter("size");
            //ranking algorithm
            String sortby = request.getParameter("sortby");
            //fetch actors by job title

            List<Actor> actors = DataManager.getInstance().getActorsByJobTitle(jobTitle, Integer.parseInt(size), sortby);

            //convert actor list to json format and return
            ObjectMapper mapper = new ObjectMapper();
            String jsonActors = mapper.writeValueAsString(actors);
            response.getWriter().println(jsonActors);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("");
        }
    }
}
