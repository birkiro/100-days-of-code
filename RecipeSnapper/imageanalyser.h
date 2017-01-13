#ifndef IMAGEANALYSER_H
#define IMAGEANALYSER_H

#include <QObject>
#include <QQuickItem>

#include "tesseract/baseapi.h"
#include "leptonica/allheaders.h"

class ImageAnalyser
{
public:
    ImageAnalyser();

    void ReadImage();
};

#endif // IMAGEANALYSER_H
