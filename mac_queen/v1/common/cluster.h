#ifndef KMEANS_CLUSTER_H
#define KMEANS_CLUSTER_H

#include "point.h"

class Cluster {
    public:
        Cluster(int32_t x, int32_t y) {
            this->x = x;
            this->y = y;
            this->numPoints = 0;
            this->x_accum = 0;
            this->y_accum = 0;
        }

        Cluster() {
            this->x = 0;
            this->y = 0;
            this->numPoints = 0;
            this->x_accum = 0;
            this->y_accum = 0;
        }

        void addPoint(Point point) {
            this->x_accum += point.getX();
            this->y_accum += point.getY();
            this->numPoints++;
        }

        int32_t getX()
        {
            return this->x;
        }

        int32_t getY()
        {
            return this->y;
        }

        void updateCoordinates() {
            this->x = (int32_t) this->x_accum / this->numPoints;
            this->y = (int32_t) this->y_accum / this->numPoints;
        }

    private:
        // cluster coordinates
        int32_t x, y;
        // number of points in cluster
        int32_t numPoints;
        // points coordinates sum
        int32_t x_accum, y_accum;
};

#endif