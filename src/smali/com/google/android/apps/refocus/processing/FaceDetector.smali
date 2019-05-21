.class public final Lcom/google/android/apps/refocus/processing/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FaceDetector"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/FaceDetector;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/refocus/processing/FaceDetector;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 35
    return-void
.end method

.method private final findLargestFace(Landroid/graphics/Bitmap;)Lcom/google/android/vision/face/Face;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 125
    .line 128
    :try_start_0
    new-instance v0, Lcom/google/android/vision/face/DetectorFactory;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/FaceDetector;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->setDetectorType(I)Lcom/google/android/vision/face/DetectorFactory;

    move-result-object v0

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->setLandmarkDetectorType(I)Lcom/google/android/vision/face/DetectorFactory;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    .line 132
    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->setProportionalMinFaceSize(F)Lcom/google/android/vision/face/DetectorFactory;

    move-result-object v0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->setMaxNumFaces(I)Lcom/google/android/vision/face/DetectorFactory;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    .line 134
    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->setConfidenceThreshold(F)Lcom/google/android/vision/face/DetectorFactory;

    move-result-object v0

    .line 1205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/vision/face/DetectorFactory;->build(Lcom/google/android/vision/face/DetectorFactory$Callback;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Detector;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector;->detectFaces(Landroid/graphics/Bitmap;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector;->release()V

    .line 153
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    sget-object v0, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v2, "No face detected."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 139
    :goto_1
    :try_start_2
    sget-object v3, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v4, "Face detection interrupted.  Skipping face detection."

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v2}, Lcom/google/android/vision/face/Detector;->release()V

    :cond_1
    move-object v0, v1

    .line 140
    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 142
    :goto_2
    :try_start_3
    sget-object v3, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v4, "Face detection execution failed.  Skipping face detection."

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v2}, Lcom/google/android/vision/face/Detector;->release()V

    :cond_2
    move-object v0, v1

    .line 143
    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 145
    :goto_3
    :try_start_4
    sget-object v3, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v4, "Face models missing.  Skipping face detection."

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v2}, Lcom/google/android/vision/face/Detector;->release()V

    :cond_3
    move-object v0, v1

    .line 146
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {v1}, Lcom/google/android/vision/face/Detector;->release()V

    :cond_4
    throw v0

    .line 157
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    goto :goto_0

    .line 148
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 144
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    .line 141
    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .line 138
    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method final computeFaceFocus(Lcom/google/android/apps/refocus/image/RGBZ;Lcom/google/android/apps/refocus/processing/FocusSettings;)Z
    .locals 7

    .prologue
    const/16 v1, 0x280

    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/FaceDetector;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isRefocusFaceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v1, "Refocus face detection is disabled."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 86
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/google/android/apps/refocus/processing/FaceDetector;->TAG:Ljava/lang/String;

    const-string v1, "No depthmap set for supplied rgbz"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 56
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1095
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1097
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gt v5, v1, :cond_2

    move-object v0, v2

    .line 66
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/apps/refocus/processing/FaceDetector;->findLargestFace(Landroid/graphics/Bitmap;)Lcom/google/android/vision/face/Face;

    move-result-object v1

    .line 67
    if-nez v1, :cond_4

    move v0, v3

    .line 68
    goto :goto_0

    .line 1101
    :cond_2
    if-le v0, v4, :cond_3

    .line 1102
    mul-int/lit16 v4, v4, 0x280

    div-int v0, v4, v0

    .line 1111
    :goto_2
    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1105
    :cond_3
    mul-int/lit16 v0, v0, 0x280

    div-int/2addr v0, v4

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1106
    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v1

    .line 76
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 77
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    .line 80
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 81
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->getDepth(II)F

    move-result v0

    iput v0, p2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method
