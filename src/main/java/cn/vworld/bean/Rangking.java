package cn.vworld.bean;

public class Rangking {
    private String rangkingID;
    private String rangkingImg;//图片
    private String rangkingName;//电影,名称
    private String rangkingDoc;//演员列表
    private String rangkingScore;//评分
    private String rangkingRemark;//评价人数
    private int starScore;

    public int getStarScore() {
        return starScore;
    }

    public void setStarScore(int starScore) {
        this.starScore = starScore;
    }

    public String getRangkingID() {

        return rangkingID;
    }

    public void setRangkingID(String rangkingID) {
        this.rangkingID = rangkingID;
    }

    public String getRangkingImg() {
        return rangkingImg;
    }

    public void setRangkingImg(String rangkingImg) {
        this.rangkingImg = rangkingImg;
    }

    public String getRangkingName() {
        return rangkingName;
    }

    public void setRangkingName(String rangkingName) {
        this.rangkingName = rangkingName;
    }

    public String getRangkingDoc() {
        return rangkingDoc;
    }

    public void setRangkingDoc(String rangkingDoc) {
        this.rangkingDoc = rangkingDoc;
    }

    public String getRangkingScore() {
        return rangkingScore;
    }

    public void setRangkingScore(String rangkingScore) {
        this.rangkingScore = rangkingScore;
    }

    public String getRangkingRemark() {
        return rangkingRemark;
    }

    public void setRangkingRemark(String rangkingRemark) {
        this.rangkingRemark = rangkingRemark;
    }

    @Override
    public String toString() {
        return "Rangking{" +
                "rangkingID='" + rangkingID + '\'' +
                ", rangkingImg='" + rangkingImg + '\'' +
                ", rangkingName='" + rangkingName + '\'' +
                ", rangkingDoc='" + rangkingDoc + '\'' +
                ", rangkingScore='" + rangkingScore + '\'' +
                ", rangkingRemark='" + rangkingRemark + '\'' +
                ", starScore=" + starScore +
                '}';
    }
}
