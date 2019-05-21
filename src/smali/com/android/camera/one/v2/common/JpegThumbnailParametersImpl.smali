.class final Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;
.super Ljava/lang/Object;
.source "JpegThumbnailParametersImpl.java"


# instance fields
.field private final jpegSize:Lcom/android/camera/util/Size;

.field private final supportedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->supportedSizes:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->supportedSizes:Ljava/util/List;

    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v2, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 36
    invoke-virtual {p2}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getHardwareJpegSize()Lcom/android/camera/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->jpegSize:Lcom/android/camera/util/Size;

    .line 37
    return-void
.end method


# virtual methods
.method public final getParameters()Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 45
    .line 1057
    iget-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->jpegSize:Lcom/android/camera/util/Size;

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 49
    :goto_1
    return-object v0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->jpegSize:Lcom/android/camera/util/Size;

    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    .line 1062
    iget-object v0, p0, Lcom/android/camera/one/v2/common/JpegThumbnailParametersImpl;->supportedSizes:Ljava/util/List;

    .line 1068
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 1070
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1073
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getAspectRatio()Lcom/android/camera/util/AspectRatio;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/util/AspectRatio;->withOrientationOf(Lcom/android/camera/util/AspectRatio;)Lcom/android/camera/util/AspectRatio;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/util/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1074
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1077
    :cond_2
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v8, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    goto :goto_0

    .line 49
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v4, 0x5a

    .line 50
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->asSize21()Landroid/util/Size;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 49
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    goto :goto_1
.end method
