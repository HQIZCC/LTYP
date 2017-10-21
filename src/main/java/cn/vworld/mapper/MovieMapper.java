package cn.vworld.mapper;

import cn.vworld.bean.MovieInfo;

import java.util.ArrayList;
import java.util.List;

public interface MovieMapper {

    ArrayList<MovieInfo> findfirstfourMovie(Integer page);

    ArrayList<MovieInfo> findsecondfourMovie(Integer page);

    ArrayList<MovieInfo> findthirdfourMovie(Integer page);

    Integer findMovieNum();

    MovieInfo findMovieInfoByMovieInfoId(String movieInfoId);

    List<MovieInfo> findMovieListBySearch(String search);

    List<MovieInfo> findNewUpdateMovie(Integer number);

    List<MovieInfo> typeSearch(String typeId);
}
