#ifndef KMEANS_POINT_H
#define KMEANS_POINT_H

class Point
{
public:
    Point(int32_t x, int32_t y)
    {
        this->x = x;
        this->y = y;
    }

    Point()
    {
        this->x = 0;
        this->y = 0;
    }

    int32_t getX()
    {
        return this->x;
    }

    int32_t getY()
    {
        return this->y;
    }

private:
    int32_t x, y;
};

#endif