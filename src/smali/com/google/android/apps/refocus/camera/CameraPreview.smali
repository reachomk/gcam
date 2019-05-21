.class public final Lcom/google/android/apps/refocus/camera/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;
    }
.end annotation


# static fields
.field private static final PREFERRED_FOCUS_MODES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private static final TAG:Ljava/lang/String;

.field private static final sLargeToSmallSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appController:Lcom/android/camera/app/AppController;

.field private camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

.field private previewRunning:Z

.field private settings:Lcom/android/ex/camera2/portability/CameraSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "CameraPreview"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->PREFERRED_FOCUS_MODES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 64
    new-instance v0, Lcom/google/android/apps/refocus/camera/CameraPreview$1;

    invoke-direct {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->sLargeToSmallSizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Lcom/android/camera/app/AppController;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;I)V
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 49
    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 50
    iput-boolean v7, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    .line 51
    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

    .line 52
    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 99
    iput-object p2, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->appController:Lcom/android/camera/app/AppController;

    .line 101
    iput-object p3, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->mainHandler:Landroid/os/Handler;

    .line 102
    iput-object p4, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 103
    invoke-virtual {p4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 104
    invoke-virtual {p4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1343
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_2

    .line 1347
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v1, "Configuring camera..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 1355
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1452
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 1453
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v3

    .line 1454
    sget-object v4, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v5, "preview formats:\n"

    invoke-static {v2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->arrayCameraSizeToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    sget-object v4, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v5, "picture formats:\n"

    invoke-static {v3}, Lcom/google/android/apps/refocus/camera/CameraPreview;->arrayCameraSizeToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->sLargeToSmallSizeComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1462
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->sLargeToSmallSizeComparator:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1464
    new-instance v0, Lcom/google/android/apps/refocus/camera/CameraSizeSelector;

    new-instance v4, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;

    invoke-direct {v4, p5}, Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;-><init>(I)V

    invoke-direct {v0, v4}, Lcom/google/android/apps/refocus/camera/CameraSizeSelector;-><init>(Lcom/google/android/apps/refocus/camera/CameraSizeSelector$Options;)V

    .line 1466
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/refocus/camera/CameraSizeSelector;->select(Ljava/util/List;Ljava/util/List;)[Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1468
    if-nez v0, :cond_5

    .line 1469
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v1, "Could not find compatible preview and picture sizes!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->configurePreviewFps(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1361
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-direct {p0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->getDevicePreferredFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1375
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->configureDisplayOrientation()V

    .line 106
    :cond_2
    invoke-virtual {p4, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->lock:Ljava/lang/Object;

    .line 109
    return-void

    .line 1454
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1473
    :cond_5
    sget-object v2, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Preferred megapixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    sget-object v2, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    aget-object v3, v0, v7

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    aget-object v4, v0, v7

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Preview size        : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    sget-object v2, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    aget-object v3, v0, v8

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    aget-object v4, v0, v8

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Picture size        : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    aget-object v2, v0, v7

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1479
    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1482
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1484
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    const/4 v2, 0x2

    .line 1483
    invoke-static {v0, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1485
    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    goto/16 :goto_2

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    sget-object v1, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/camera/CameraPreview;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/refocus/camera/CameraPreview;Z)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/refocus/camera/CameraPreview;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/refocus/camera/CameraPreview;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static arrayCameraSizeToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 515
    const-string v0, ""

    .line 516
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/Size;

    .line 517
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%dx%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 518
    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_1
    return-object v1
.end method

.method private static configurePreviewFps(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 425
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 426
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 427
    aget v4, v0, v6

    const/16 v5, 0x1b58

    if-lt v4, v5, :cond_0

    aget v4, v0, v7

    const/16 v5, 0x7530

    if-gt v4, v5, :cond_0

    .line 430
    aget v4, v0, v7

    aget v5, v1, v7

    if-gt v4, v5, :cond_1

    aget v4, v0, v6

    aget v5, v1, v6

    if-ge v4, v5, :cond_4

    :cond_1
    :goto_1
    move-object v1, v0

    .line 433
    goto :goto_0

    .line 436
    :cond_2
    aget v0, v1, v6

    if-gez v0, :cond_3

    .line 437
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 439
    :goto_2
    aget v1, v0, v6

    aget v2, v0, v7

    invoke-virtual {p1, v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 440
    sget-object v1, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    aget v2, v0, v6

    aget v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "fps range set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 425
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final getDevicePreferredFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 5

    .prologue
    .line 490
    sget-object v2, Lcom/google/android/apps/refocus/camera/CameraPreview;->PREFERRED_FOCUS_MODES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 491
    iget-object v4, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    :cond_0
    :goto_1
    return-object v0

    .line 490
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v1

    .line 498
    const/4 v0, 0x0

    .line 499
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_1
.end method


# virtual methods
.method public final configureDisplayOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(IZ)V

    .line 409
    return-void
.end method

.method public final getCamera()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method public final getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method public final getFocalLength35mm()I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getHorizontalViewAngle()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 166
    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-int v0, v0

    return v0
.end method

.method public final getPhotoOrientation()I
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->appController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v1

    .line 389
    iget-object v2, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 390
    invoke-static {v0, v1, v2}, Lcom/android/camera/util/ImageRotationCalculator;->getImageRotation(IIZ)I

    move-result v0

    return v0
.end method

.method public final getPreviewSize()Lcom/android/ex/camera2/portability/Size;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    return-object v0
.end method

.method public final isCameraFrontFacing()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->cameraInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    return v0
.end method

.method public final isPreviewRunning()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    return v0
.end method

.method public final onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/refocus/image/ColorImage;->setBuffer([B)V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;->onCameraImageAvailable(Lcom/google/android/apps/refocus/image/ColorImage;J)V

    .line 313
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/image/ColorImage;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->addCallbackBuffer([B)V

    goto :goto_0
.end method

.method public final releaseCamera()V
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v1, "Shutting down camera..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/camera/CameraPreview;->stopPreview()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    goto :goto_0
.end method

.method public final setCameraSettings(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 131
    return-void
.end method

.method public final setImageCallback(Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

    .line 295
    return-void
.end method

.method public final startPreview(Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 209
    :cond_0
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v1, "Started preview without camera or surface!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v1, "Starting camera preview..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 216
    invoke-virtual {p0, p2}, Lcom/google/android/apps/refocus/camera/CameraPreview;->startPreview(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method

.method public final startPreview(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 7

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    if-eqz v0, :cond_0

    .line 180
    monitor-exit v1

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->imageCallback:Lcom/google/android/apps/refocus/camera/CameraPreview$ImageCallback;

    if-eqz v0, :cond_3

    .line 3285
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 2320
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v3

    .line 2321
    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 2322
    if-gtz v0, :cond_1

    .line 2323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown image format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2326
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x8

    .line 2327
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 2328
    new-array v5, v4, [B

    .line 2329
    iget-object v6, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v6, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->addCallbackBuffer([B)V

    .line 2327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2332
    :cond_2
    new-instance v0, Lcom/google/android/apps/refocus/image/ColorImage;

    .line 2334
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fromImageFormat(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/apps/refocus/image/ColorImage;-><init>(III[B)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewImage:Lcom/google/android/apps/refocus/image/ColorImage;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 193
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    .line 194
    monitor-exit v1

    goto :goto_0

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final stopPreview()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    monitor-exit v1

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v0, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    const-string v2, "Stopping camera preview..."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 234
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final takePicture(Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->previewRunning:Z

    if-nez v0, :cond_0

    .line 252
    monitor-exit v1

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/google/android/apps/refocus/camera/CameraPreview$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, p3}, Lcom/google/android/apps/refocus/camera/CameraPreview$2;-><init>(Lcom/google/android/apps/refocus/camera/CameraPreview;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 265
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/CameraPreview$2;->start()V

    .line 266
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final toggleAutoSettings(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->capabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 155
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/google/android/apps/refocus/camera/CameraPreview;->settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 148
    goto :goto_0

    :cond_3
    move v1, v2

    .line 151
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/google/android/apps/refocus/camera/CameraPreview;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
