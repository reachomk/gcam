.class public Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;
.super Ljava/lang/Object;
.source "FaceSharpnessCalculator.java"


# static fields
.field private static final BOX_FILTER_SIZE:I = 0x7

.field private static final STATS_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

.field private static final USE_LINEAR:Z

.field private static final USE_MIPMAPS:Z


# instance fields
.field private final mBoxBlurOperatorX:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

.field private final mBoxBlurOperatorY:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

.field private final mGrayValuesExtractor:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

.field private mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

.field private final mRegionStatsCalculator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;

.field private final mSobelOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 31
    invoke-static {v0, v0, v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->fromRect(FFFF)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->STATS_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 46
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 47
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mSobelOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;

    .line 48
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mGrayValuesExtractor:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    .line 49
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mRegionStatsCalculator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;

    .line 50
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;-><init>(ZII)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mBoxBlurOperatorX:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    .line 51
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;-><init>(ZII)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mBoxBlurOperatorY:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    .line 52
    return-void
.end method


# virtual methods
.method public computeFaceImagePerceptualSharpness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)F
    .locals 4

    .prologue
    const/16 v3, 0x12d

    const/16 v2, 0x12

    .line 146
    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 149
    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mBoxBlurOperatorX:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->computeBlur(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 154
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mBoxBlurOperatorY:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->computeBlur(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 156
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/PerceptualSharpnessCalculator;->computeSharpness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)F

    move-result v2

    .line 159
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 160
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 161
    return v2
.end method

.method public computeFaceImageShapness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 114
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v4

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mSobelOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/SobelOperator;->calculate(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mGrayValuesExtractor:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    .line 123
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->getOutputFrameDimensions([I)[I

    move-result-object v0

    .line 124
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mGrayValuesExtractor:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->toGrayValues(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mRegionStatsCalculator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;

    sget-object v2, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->STATS_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator;->calcMeanAndStd(Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;Z)Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 133
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 136
    iget v0, v1, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;->mean:F

    float-to-double v2, v0

    iget v0, v1, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RegionStatsCalculator$Statistics;->stdDev:F

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public computeFaceSharpness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/vision/face/Face;)F
    .locals 4

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 72
    invoke-virtual {p2}, Lcom/google/android/vision/face/Face;->getCoreFeaturesBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 75
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 78
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 80
    invoke-static {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->cropFace(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/vision/face/Face;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->computeFaceImagePerceptualSharpness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)F

    move-result v1

    .line 85
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 86
    return v1
.end method

.method public cropFace(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/vision/face/Face;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image cropper has already been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v0

    .line 102
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v1

    .line 103
    invoke-static {p2, v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getFaceQuad(Lcom/google/android/vision/face/Face;II)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    move-object v1, p1

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->cropImage(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;ZZ)V

    .line 105
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->release()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 62
    :cond_0
    return-void
.end method
