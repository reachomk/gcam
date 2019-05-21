.class public final Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;
.super Ljava/lang/Object;
.source "FaceMetadataExtractor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/metadata/ImageMetadataExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;
    }
.end annotation


# static fields
.field private static final FACE_SHARPNESS_CALCULATOR:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;

.field private static final GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

.field private static final PITT_PATT_FACE_DETECTOR:Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 44
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;

    const/16 v4, 0x14

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;-><init>(ZZZII)V

    sput-object v0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->PITT_PATT_FACE_DETECTOR:Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;

    .line 46
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    invoke-direct {v0, v5}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    .line 47
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;

    invoke-direct {v0, v5}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->FACE_SHARPNESS_CALCULATOR:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private static computeAverageScore(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;",
            "Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;",
            ")F"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 354
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;->apply(Lcom/google/android/vision/face/Face;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 355
    goto :goto_0

    .line 356
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v1, v0

    goto :goto_1
.end method

.method private static computeMinimumMaximumScores(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;",
            "Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 370
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 372
    const/4 v0, 0x1

    .line 373
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 374
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;->apply(Lcom/google/android/vision/face/Face;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 375
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 376
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    .line 377
    goto :goto_1

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getFaceByteBuffers(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 94
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v2

    .line 98
    const/16 v0, 0x12d

    const/16 v3, 0x12

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getFaceQuad(Lcom/google/android/vision/face/Face;II)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v6

    .line 103
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    aput v2, v7, v9

    invoke-static {v7, v6}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->computeCropDimensions([ILcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)[I

    move-result-object v6

    .line 105
    invoke-static {v3, v6}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v7

    .line 107
    invoke-static {p0, v0, v7}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->cropFace(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/vision/face/Face;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 108
    sget-object v0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    .line 109
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->getOutputFrameDimensions([I)[I

    move-result-object v0

    .line 110
    const/16 v6, 0x64

    invoke-static {v6}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 112
    sget-object v6, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    invoke-virtual {v6, v7, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->toGrayValues(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;)V

    .line 113
    invoke-virtual {v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 114
    invoke-virtual {v0, v9}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 116
    invoke-static {v6}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 117
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 118
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    return-object v4
.end method


# virtual methods
.method public final extractMetadata(JLandroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/storage/Metadata;
    .locals 17

    .prologue
    .line 126
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->attachToThread()V

    .line 1141
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    invoke-static/range {p3 .. p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->frameFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v4

    .line 1145
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v5

    .line 1193
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 1196
    sget-object v2, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    .line 1197
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->getOutputFrameDimensions([I)[I

    move-result-object v1

    .line 1198
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    .line 1199
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v2

    .line 1200
    sget-object v6, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->GRAY_VALUES_EXTRACTOR:Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;

    invoke-virtual {v6, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/GrayValuesExtractor;->toGrayValues(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;)V

    .line 1201
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1204
    const/16 v7, 0x64

    invoke-static {v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    .line 1205
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v1

    .line 1206
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1208
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v9

    .line 1207
    invoke-static {v6, v8, v9, v7}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageHistogramEqualization;->applyImageHistogramEqualization(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    .line 1210
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->unlock()V

    .line 1211
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 1213
    sget-object v2, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->PITT_PATT_FACE_DETECTOR:Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->mContext:Landroid/content/Context;

    .line 1214
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v9

    .line 1213
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/libraries/smartburst/filterpacks/face/PittPattFaceDetector;->detectFaces(Landroid/content/Context;Ljava/nio/ByteBuffer;II)Ljava/util/List;

    move-result-object v6

    .line 1216
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->unlock()V

    .line 1217
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 1149
    new-instance v7, Lcom/google/android/libraries/smartburst/storage/Metadata;

    invoke-direct {v7}, Lcom/google/android/libraries/smartburst/storage/Metadata;-><init>()V

    .line 1150
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1234
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    new-instance v8, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    invoke-direct {v8}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>()V

    .line 1237
    const/4 v1, 0x0

    .line 1238
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vision/face/Face;

    .line 1239
    sget-object v10, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->FACE_SHARPNESS_CALCULATOR:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;

    .line 1240
    invoke-virtual {v10, v3, v1}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceSharpnessCalculator;->computeFaceSharpness(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/vision/face/Face;)F

    move-result v1

    .line 1241
    invoke-virtual {v8, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 1242
    add-float/2addr v1, v2

    move v2, v1

    .line 1243
    goto :goto_0

    .line 1244
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1249
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1259
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$1;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$1;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeAverageScore(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)F

    move-result v9

    .line 1289
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$3;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$3;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeAverageScore(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)F

    move-result v10

    .line 1319
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$5;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$5;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeAverageScore(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)F

    move-result v11

    .line 1389
    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1391
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1392
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v2, v1

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vision/face/Face;

    .line 1393
    invoke-virtual {v1}, Lcom/google/android/vision/face/Face;->getIsLeftEyeOpenScore()F

    move-result v13

    invoke-virtual {v1}, Lcom/google/android/vision/face/Face;->getIsRightEyeOpenScore()F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1394
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v2, v1

    .line 1395
    goto :goto_3

    .line 1244
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    goto :goto_1

    .line 1390
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 2274
    :cond_3
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$2;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$2;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeMinimumMaximumScores(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)Landroid/util/Pair;

    move-result-object v12

    .line 2304
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$4;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$4;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeMinimumMaximumScores(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)Landroid/util/Pair;

    move-result-object v13

    .line 2334
    new-instance v1, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$6;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$6;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->computeMinimumMaximumScores(Ljava/util/List;Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor$ScoreFunction;)Landroid/util/Pair;

    move-result-object v14

    .line 3070
    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 3073
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    .line 3074
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vision/face/Face;

    .line 3075
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getFaceRect(Lcom/google/android/vision/face/Face;II)Landroid/graphics/RectF;

    move-result-object v1

    .line 3076
    invoke-virtual {v15, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 131
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V

    throw v1

    .line 3071
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 1161
    :cond_5
    :try_start_1
    invoke-static {v3, v6}, Lcom/google/android/libraries/smartburst/metadata/FaceMetadataExtractor;->getFaceByteBuffers(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1164
    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    invoke-virtual {v7, v1, v6}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v5

    sget-object v6, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_SHARPNESS_LIST_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    .line 1165
    invoke-virtual {v5, v6, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v5

    sget-object v6, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_SHARPNESS_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1166
    invoke-virtual {v5, v6, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_LEFT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1167
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MINIMUM_MAXIMUM_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1168
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MINIMUM_LEFT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1169
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_LEFT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1170
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_RIGHT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1171
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MINIMUM_RIGHT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1172
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_RIGHT_EYE_OPEN_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1173
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_AVERAGE_SMILING_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1174
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MINIMUM_SMILING_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1175
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_MAXIMUM_SMILING_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    iget-object v1, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 1176
    invoke-virtual {v2, v5, v1}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_BOUNDING_BOX_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1177
    invoke-virtual {v1, v2, v15}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACE_IMAGES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    .line 1178
    invoke-virtual {v1, v2, v4}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;

    .line 1182
    :goto_6
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V

    .line 129
    return-object v7

    .line 1180
    :cond_6
    :try_start_2
    sget-object v1, Lcom/google/android/libraries/smartburst/storage/Metadata;->FACES_KEY:Lcom/google/android/libraries/smartburst/storage/Metadata$Key;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1, v2}, Lcom/google/android/libraries/smartburst/storage/Metadata;->setValue(Lcom/google/android/libraries/smartburst/storage/Metadata$Key;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/storage/Metadata;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "FaceMetadataExtractor"

    return-object v0
.end method
