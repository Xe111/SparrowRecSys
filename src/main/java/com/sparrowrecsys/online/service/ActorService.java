package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Actor;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ActorService, return information of a specific actor
 */

public class ActorService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //get actor id via url parameter
            String actorId = request.getParameter("id");

            //get actor object from DataManager
            Actor actor = DataManager.getInstance().getActorById(Integer.parseInt(actorId));

            //convert actor object to json format and return
            if (null != actor) {
                ObjectMapper mapper = new ObjectMapper();
                String jsonActor = mapper.writeValueAsString(actor);
                response.getWriter().println(jsonActor);
            }else {
                response.getWriter().println("");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("");
        }
    }
}