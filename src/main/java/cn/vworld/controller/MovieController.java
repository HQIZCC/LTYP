package cn.vworld.controller;

import cn.vworld.bean.Comment;
import cn.vworld.bean.MovieImage;
import cn.vworld.bean.MovieInfo;
import cn.vworld.bean.User;
import cn.vworld.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;
    private Integer page = 1; //当前页数
    private Integer pages = 0;//总共有多少页
    private Integer pageMovie = 12;//每页显示的电影数
    private Integer movieNum = 0;//书籍的数量

    /**
     * 展现首页 默认页码为1
     *
     * @param model
     * @param page  当前的页面
     * @return
     */
    @RequestMapping("/showmovie")
    public String showMovie(Model model, Integer page) {
        movieNum = movieService.findMovieNum();
        pages = movieNum % pageMovie == 0 ? (movieNum / pageMovie) : (movieNum / pageMovie) + 1;
        model.addAttribute("pages", pages);
        page = 1;
        ArrayList<MovieInfo> movieList = movieService.findfirstfourMovie((page - 1) * pageMovie + 1);
        model.addAttribute("movieList", movieList);
        ArrayList<MovieInfo> movieList2 = movieService.findsecondfourMovie((page - 1) * pageMovie + 5);
        model.addAttribute("movieList2", movieList2);
        ArrayList<MovieInfo> movieList3 = movieService.findthirdfourMovie((page - 1) * pageMovie + 9);
        model.addAttribute("movieList3", movieList3);
        return "index";
    }

    /**
     * 根据页码来翻页
     *
     * @param model
     * @param page  当前页面
     * @return
     */
    @RequestMapping("/findeAllPage")
    public String findAllBook(Model model, Integer page) {
        movieNum = movieService.findMovieNum();
        pages = movieNum % pageMovie == 0 ? (movieNum / pageMovie) : (movieNum / pageMovie) + 1;
        model.addAttribute("pages", pages);

        ArrayList<MovieInfo> movieList = movieService.findfirstfourMovie(pageMovie * (page - 1) + 1);
        model.addAttribute("movieList", movieList);
        ArrayList<MovieInfo> movieList2 = movieService.findsecondfourMovie((page - 1) * pageMovie + 5);
        model.addAttribute("movieList2", movieList2);
        ArrayList<MovieInfo> movieList3 = movieService.findthirdfourMovie((page - 1) * pageMovie + 9);
        model.addAttribute("movieList3", movieList3);
        return "index";
    }
    @RequestMapping("/single")
    public String tosingle(String movieId, Model model) {
        MovieInfo movieInfo = movieService.findMovieInfoByMovieInfoId(movieId);
        model.addAttribute("movieInfo", movieInfo);
        List<MovieImage> imageList = movieService.findMovieImageByMovieInfoId(movieId);
        if (imageList != null) {
            imageList.remove(0);
            if (System.currentTimeMillis() % 2 == 1) {
                model.addAttribute("movieimg", imageList.get(0));
            }else {
                model.addAttribute("movieimg", imageList.get(1));
            }
        }
        List<Comment> commentList= movieService.findCommentsByMovie(movieId);
        model.addAttribute("commentList", commentList);
        return "/movie/single";
    }

    @RequestMapping("/commitComment")
    public String commitComment(Integer movieId, String commDetail, HttpSession session) {
        User user_login = (User) session.getAttribute("user_login");
        if (user_login == null) {
            return "redirect:/login/signin";
        }
        Comment comment = new Comment();
        comment.setCommDetail(commDetail);
        comment.setMovieId(String.valueOf(movieId));
        comment.setUser(user_login);
        movieService.insertComment(comment);

        return "redirect:/movie/single?movieId="+movieId;
    }

    @RequestMapping("/search")
    public String search(String search, Model model) {
        List<MovieInfo> movieInfoList = movieService.findMovieListBySearch(search);
        model.addAttribute("movieInfoList", movieInfoList);


        return "/movie/result";
    }


}
