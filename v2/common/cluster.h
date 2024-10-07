#ifndef KMEANS_CLUSTER_H
#define KMEANS_CLUSTER_H

#define verbose 1

class Cluster {
    public:
        Cluster(int32_t x, int32_t y) {
            this->x = x;
            this->y = y;
            this->numPoints = 1;
            this->x_accum = x;
            this->y_accum = y;
        }

        Cluster() {
            this->x = 0;
            this->y = 0;
            this->numPoints = 0;
            this->x_accum = 0;
            this->y_accum = 0;
        }

        void addPoint(Point point) {
            this->x_accum += point.x;
            this->y_accum += point.y;
            this->numPoints++;

            if constexpr (verbose)
                printf("Point (%d,%d) added to cluster\n", point.x, point.y);
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
            if constexpr (verbose)
                printf("Coord updated to (%d,%d)\n", this->x, this->y);
        }
    private:
        // cluster coordinates
        int32_t x, y;
        // number of points in cluster
        int32_t numPoints;
        // points coordinates sum
        int32_t x_accum, y_accum;
};

struct Point
{
    int32_t x, y;

    // Constructor
    Point(int32_t x_coord, int32_t y_coord) : x(x_coord), y(y_coord) {}
};

#endif