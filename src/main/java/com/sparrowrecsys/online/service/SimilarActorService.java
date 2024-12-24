package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.Actor;
import com.sparrowrecsys.online.recprocess.SimilarActorProcess;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * SimilarActorService, recommend similar actors given by a specific actor
 */
public class SimilarActorService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //actorId
            String actorId = request.getParameter("actorId");
            //number of returned actors
            String size = request.getParameter("size");
            //model of calculating similarity, e.g. embedding, graph-embedding
            String model = request.getParameter("model");

            //use SimilarActorProcess to get similar actors
            List<Actor> actors = SimilarActorProcess.getRecList(Integer.parseInt(actorId), Integer.parseInt(size), model);

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
