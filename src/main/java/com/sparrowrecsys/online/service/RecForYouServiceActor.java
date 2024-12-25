package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.recprocess.RecForYouProcessActor;
import com.sparrowrecsys.online.util.ABTest;
import com.sparrowrecsys.online.datamanager.Actor;
import com.sparrowrecsys.online.util.Config;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * RecForYouServiceActor, provide recommended for you service for actors
 */
public class RecForYouServiceActor extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException,
            IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //get user id via url parameter
            String userId = request.getParameter("id");
            //number of returned actors
            String size = request.getParameter("size");
            //ranking algorithm
            String model = request.getParameter("model");

            if (Config.IS_ENABLE_AB_TEST){
                model = ABTest.getConfigByUserId(userId);
            }

            //a simple method, just fetch all the actors in the genre
            List<Actor> actors = RecForYouProcessActor.getRecList(Integer.parseInt(userId), Integer.parseInt(size), model);

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
