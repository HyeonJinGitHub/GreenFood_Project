package net.developia.greenfood.dto;

import java.io.Serializable;
import java.util.Comparator;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class ArticleDTO{
	private int no;
	private String id;
	private String title;
	private String explanation;
	private String foodname;
	private int howmuch;
	private int cookingtime;
	private int foodcategoryno;
	private String viedofile;
	private String thumbnail;
	private int views;
	private int likes;
	private String relation_score;
	private int rscore;
	
	public static class SortByLikePlusViewPlusScore implements Comparator<ArticleDTO> {
		@Override
		public int compare(ArticleDTO o1, ArticleDTO o2) {
			int tmp1 = (int) (o1.getViews() + o1.getLikes() + o1.getRscore()*0.000001);
			int tmp2 = (int) (o2.getViews() + o2.getLikes() + o2.getRscore()*0.000001);
			return tmp2 - tmp1;
		}
    }
}
