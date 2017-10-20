package cn.vworld.controller.backcontroller;

import cn.vworld.bean.MovieInfo;
import cn.vworld.service.backservice.BackDoMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class BackDoMovieController {

    @Autowired
    private BackDoMovieService backDoMovieService;


    /**
     * 根据电影id查询电影详情
     * @param model
     * @return
     */
    @RequestMapping("/toview")
    public String toView(String movieId, Model model){

        if(movieId == null){
            return "/backend/movieList";
        }

        MovieInfo movieInfo = backDoMovieService.findMovieInfoByMovieId(movieId);

        model.addAttribute("movieInfo", movieInfo);

        return "/backend/movieInfo";
    }
}
