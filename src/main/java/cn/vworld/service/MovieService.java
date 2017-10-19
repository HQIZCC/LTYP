package cn.vworld.service;

import cn.vworld.bean.MovieInfo;

import java.util.ArrayList;

public interface MovieService {


    ArrayList<MovieInfo> findMovie(Integer page);

    ArrayList<MovieInfo> findfirstfourMovie(Integer page);

    ArrayList<MovieInfo> findsecondfourMovie(Integer page);

    ArrayList<MovieInfo> findthirdfourMovie(Integer page);
}
