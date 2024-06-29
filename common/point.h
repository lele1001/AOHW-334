#ifndef KMEANS_POINT_H
#define KMEANS_POINT_H

class Point
{
public:
    Point(int32_t x, int32_t y)
    {
        this->x = x;
        this->y = y;
        this->clusterId = -1;
    }

    Point()
    {
        this->x = 0;
        this->y = 0;
        this->clusterId = -1;
    }

    int32_t getCluster()
    {
        return clusterId;
    }

    void setCluster(int32_t id)
    {
        this->clusterId = id;
    }

    int32_t getX()
    {
        return x;
    }

    int32_t getY()
    {
        return y;
    }

private:
    int32_t clusterId, x, y;
};

#endif