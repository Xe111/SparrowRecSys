package com.sparrowrecsys.online.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sparrowrecsys.online.datamanager.Director;
import com.sparrowrecsys.online.recprocess.SimilarDirectorProcess;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * SimilarDirectorService, recommend similar directors given by a specific director
 */
public class SimilarDirectorService extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");

            //directorId
            String directorId = request.getParameter("directorId");
            //number of returned directors
            String size = request.getParameter("size");
            //model of calculating similarity, e.g. embedding, graph-embedding
            String model = request.getParameter("model");

            //use SimilarDirectorProcess to get similar directors
            List<Director> directors = SimilarDirectorProcess.getRecList(Integer.parseInt(directorId), Integer.parseInt(size), model);

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
