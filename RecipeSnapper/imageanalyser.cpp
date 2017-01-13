#include "imageanalyser.h"

ImageAnalyser::ImageAnalyser()
{

}

void ImageAnalyser::ReadImage()
{
    char* output;

    tesseract::TessBaseAPI* myTesseract = new tesseract::TessBaseAPI();

    if (myTesseract->Init(NULL, "eng")) return;

    Pix* image = pixRead("/Users/birkiro/Development/Projects/RecipeSnapper/Images/minion.jpg");
    myTesseract->SetImage(image);

    output = myTesseract->GetUTF8Text();

    printf("OCR Output: \n%s", output);

    myTesseract->End();
    delete [] output;
    pixDestroy(&image);
}

