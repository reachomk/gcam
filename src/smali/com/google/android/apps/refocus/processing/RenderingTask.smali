.class public final Lcom/google/android/apps/refocus/processing/RenderingTask;
.super Ljava/lang/Object;
.source "RenderingTask.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTask;


# static fields
.field private static final JPEG_QUALITY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private finishedCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

.field private final location:Landroid/location/Location;

.field private final name:Ljava/lang/String;

.field private rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

.field private session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "RenderingTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/processing/RenderingTask;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/refocus/processing/RenderingTask;->JPEG_QUALITY:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/apps/refocus/processing/FocusSettings;Lcom/google/android/apps/refocus/image/RGBZ;Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/refocus/processing/FaceDetector;Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->uri:Landroid/net/Uri;

    .line 67
    if-nez p2, :cond_0

    .line 68
    sget-object v0, Lcom/google/android/apps/refocus/processing/RenderingTask;->TAG:Ljava/lang/String;

    const-string v1, "No focus settings supplied, using default"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    invoke-direct {v0, p3}, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;-><init>(Lcom/google/android/apps/refocus/image/RGBZ;)V

    .line 70
    iget-object v0, v0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-static {p7, v0}, Lcom/google/android/apps/refocus/processing/FocusSettings;->createDefault(Lcom/google/android/apps/refocus/processing/FaceDetector;Lcom/google/android/apps/refocus/image/RGBZ;)Lcom/google/android/apps/refocus/processing/FocusSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 74
    :goto_0
    iput-object p3, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 75
    iput-object p4, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->name:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->location:Landroid/location/Location;

    .line 77
    iput-object p8, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->contentResolver:Landroid/content/ContentResolver;

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2083
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->name:Ljava/lang/String;

    .line 2149
    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->location:Landroid/location/Location;

    .line 1184
    invoke-interface {p6, v2, v0, v1, v3}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession$5166KOBMC4NMOOBECSNL6T3ID5N6EEQA9HGMSP3IDTKM8BRCDTHM2T39DTN2UJ3FCDGN8QBFDOTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 79
    return-void

    .line 72
    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    goto :goto_0
.end method


# virtual methods
.method public final getSession()Lcom/android/camera/session/SessionBase;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method public final process(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 3097
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    if-nez v1, :cond_0

    .line 3099
    :try_start_0
    new-instance v1, Lcom/google/android/apps/refocus/image/RGBZ;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/refocus/image/RGBZ;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3106
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v1}, Lcom/google/android/apps/refocus/image/RGBZ;->hasDepthmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3110
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->uri:Landroid/net/Uri;

    const v2, 0x7f0a0239

    new-array v3, v4, [Ljava/lang/Object;

    .line 3111
    invoke-static {v2, v3}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v2

    sget-object v3, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR_RERENDER:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 3110
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/StackableSession;->startSession(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 3112
    new-instance v1, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;

    invoke-direct {v1, v0}, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;-><init>(Lcom/android/camera/session/StackableSession;)V

    .line 3134
    new-instance v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;

    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-direct {v2, v3}, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;-><init>(Lcom/google/android/apps/refocus/image/RGBZ;)V

    .line 3135
    iget-object v3, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v3

    .line 3136
    iget-object v5, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v5}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v5

    .line 3137
    iget-object v6, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v6, v6, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    iput v6, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    .line 3138
    iget-object v6, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v6, v6, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    iput v6, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    .line 3139
    iget-object v6, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v6, v6, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    .line 3141
    new-instance v3, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;

    invoke-direct {v3}, Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;-><init>()V

    .line 3142
    new-instance v5, Lcom/google/android/apps/refocus/processing/TiledRenderer;

    new-instance v6, Lcom/google/android/apps/refocus/processing/Renderer;

    sget v7, Lcom/google/android/apps/refocus/processing/Renderer$Priority;->LOW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUS3IDTHMASRJD5N6EBQICLN68PBICLP28K3ID5NN4QBKF4TG____:I

    invoke-direct {v6, p1, v7}, Lcom/google/android/apps/refocus/processing/Renderer;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v3, v6}, Lcom/google/android/apps/refocus/processing/TiledRenderer;-><init>(Lcom/google/android/apps/refocus/processing/TiledRenderer$Options;Lcom/google/android/apps/refocus/processing/Renderer;)V

    .line 3144
    invoke-virtual {v5, v2, v1}, Lcom/google/android/apps/refocus/processing/TiledRenderer;->render(Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;Lcom/google/android/apps/refocus/processing/ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3115
    if-nez v1, :cond_3

    .line 3116
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->finish()V

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 3100
    :catch_0
    move-exception v0

    .line 3101
    sget-object v1, Lcom/google/android/apps/refocus/processing/RenderingTask;->TAG:Ljava/lang/String;

    const-string v2, "Error creating RGBZ: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3120
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/refocus/image/RGBZ;->setPreview(Landroid/graphics/Bitmap;)V

    .line 3121
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/refocus/image/RGBZ;->setFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)V

    .line 3123
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    sget v2, Lcom/google/android/apps/refocus/processing/RenderingTask;->JPEG_QUALITY:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/refocus/image/RGBZ;->createRgbzFile(I)Lcom/google/android/apps/refocus/image/RGBZ$Data;

    move-result-object v5

    .line 3124
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->location:Landroid/location/Location;

    if-eqz v1, :cond_4

    .line 3125
    new-instance v1, Lcom/android/camera/util/ExifUtil;

    iget-object v2, v5, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1, v2}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 3129
    :cond_4
    iget-object v1, v5, Lcom/google/android/apps/refocus/image/RGBZ$Data;->fileData:[B

    iget-object v2, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 3130
    invoke-virtual {v2}, Lcom/google/android/apps/refocus/image/RGBZ;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    invoke-virtual {v3}, Lcom/google/android/apps/refocus/image/RGBZ;->getHeight()I

    move-result v3

    iget-object v5, v5, Lcom/google/android/apps/refocus/image/RGBZ$Data;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3129
    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;[BIIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0
.end method

.method public final releaseRgbz()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 177
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/RenderingTask;->finishedCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 160
    return-void
.end method

.method public final suspend()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
