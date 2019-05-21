.class public final Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;
.super Ljava/lang/Object;
.source "ColorFeatureExtractor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/postprocessing/feature/ImageFeatureExtractor;


# instance fields
.field private final mHueSatBuffer:Ljava/nio/FloatBuffer;

.field private final mHueValueBinCount:I

.field private final mSaturationBinCount:I

.field private final mSaturationThreshold:I

.field private final mValueBinCount:I

.field private final mValueBuffer:Ljava/nio/FloatBuffer;

.field private final mValueThreshold:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueValueBinCount:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mSaturationBinCount:I

    .line 53
    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mSaturationThreshold:I

    .line 54
    const/16 v0, 0x33

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueThreshold:I

    .line 56
    iget v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueValueBinCount:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBinCount:I

    .line 57
    iget v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueValueBinCount:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mSaturationBinCount:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueSatBuffer:Ljava/nio/FloatBuffer;

    .line 58
    iget v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBinCount:I

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBuffer:Ljava/nio/FloatBuffer;

    .line 59
    return-void
.end method

.method private static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 107
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method private static readFloats(Ljava/nio/FloatBuffer;)[F
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [F

    .line 102
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 103
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized extractFeatures(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->attachToThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1075
    :try_start_1
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->frameFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v8

    .line 1076
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RgbToHsvConverter;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RgbToHsvConverter;-><init>(Z)V

    .line 1077
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->createImageFrame(II)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 1078
    invoke-virtual {v1, v8, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/RgbToHsvConverter;->convertImage(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 1081
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueSatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 1082
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 1083
    iget v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueValueBinCount:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mSaturationBinCount:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBinCount:I

    iget v4, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mSaturationThreshold:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueThreshold:I

    iget-object v6, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueSatBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v7}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->extractHueSatValueHistogram(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IIIIILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 1088
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mHueSatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->readFloats(Ljava/nio/FloatBuffer;)[F

    move-result-object v1

    .line 1089
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->mValueBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/postprocessing/feature/ColorFeatureExtractor;->readFloats(Ljava/nio/FloatBuffer;)[F

    move-result-object v2

    .line 1090
    new-instance v3, Lcom/google/android/libraries/smartburst/utils/Feature;

    sget-object v4, Lcom/google/android/libraries/smartburst/utils/FeatureType;->HUE_SAT_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-direct {v3, v4, v1}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;[F)V

    .line 1091
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/Feature;

    sget-object v4, Lcom/google/android/libraries/smartburst/utils/FeatureType;->VALUE_HISTOGRAM:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-direct {v1, v4, v2}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;[F)V

    .line 1094
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 1095
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 1097
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/utils/Feature;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 69
    :try_start_2
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    monitor-exit p0

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->detachFromThread()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
