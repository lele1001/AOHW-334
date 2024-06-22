#ifndef KMEANS_POINT_H
#define KMEANS_POINT_H

class Point
{
    public:
        Point(int x, int y)
        {
            this->x = x;
            this->y = y;
            this->clusterId = -1;
        }

        Point() {
            this->x = 0;
            this->y = 0;
            this->clusterId = -1;
        }

        int getCluster()
        {
            return clusterId;
        }

        void setCluster(int id)
        {
            this->clusterId = id;
        }

        int getX()
        {
            return x;
        }

        int getY()
        {
            return y;
        }

    private:
        int clusterId, x, y;
};

#endif