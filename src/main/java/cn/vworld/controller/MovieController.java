package cn.vworld.controller;

import cn.vworld.bean.MovieInfo;
import cn.vworld.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @RequestMapping("/showmovie")
    public String showMovie(Model model,Integer page) {
      ArrayList<MovieInfo> movieList= movieService.findfirstfourMovie(page);
        model.addAttribute("movieList", movieList);
      ArrayList<MovieInfo> movieList2= movieService.findsecondfourMovie(page);
        model.addAttribute("movieList2", movieList2);
      ArrayList<MovieInfo> movieList3= movieService.findthirdfourMovie(page);
        model.addAttribute("movieList3", movieList3);
        return "index";
    }

}
