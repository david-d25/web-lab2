package ru.david.web1;

public class Result {
    public double x, y, r;
    public boolean hit;
    public long timestamp;

    Result(double x, double y, double r, boolean hit, long timestamp) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.hit = hit;
        this.timestamp = timestamp;
    }
}
