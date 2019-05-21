.class public Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"


# instance fields
.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageConsumer;

.field private final pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 0

    .prologue
    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2048
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    .line 2049
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;->pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;

    .line 2050
    return-void
.end method


# virtual methods
.method public createThumbnails$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NKIRB1CTIL0SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UT38ELMM4RJ1D5M2UL38ELMM4RJ1D5M6ASH4A9IN6TBCEGTG____(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/android/libraries/smartburst/utils/Functions;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1055
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 1056
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v7

    .line 1057
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thumbnail generation should not require metadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1058
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1060
    new-instance v3, Lcom/android/camera/one/v2/imagesaver/util/TrackedImage;

    invoke-direct {v3, p1}, Lcom/android/camera/one/v2/imagesaver/util/TrackedImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;->pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getReprocessingOutputImageReaderSpec()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;->pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;

    .line 1067
    invoke-virtual {v0}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getReprocessingOutputImageReaderSpec()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    .line 1069
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getAspectRatio()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    .line 1071
    new-instance v1, Lcom/android/camera/util/Size;

    .line 1073
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1072
    invoke-virtual {v0, v1}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1079
    :goto_0
    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-direct {v1, v3, p2, v2, v0}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 1082
    new-instance v4, Lcom/android/camera/processing/imagebackend/NullSessionBase;

    invoke-direct {v4}, Lcom/android/camera/processing/imagebackend/NullSessionBase;-><init>()V

    .line 1083
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 1084
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    sget-object v5, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 1085
    invoke-static {v0, v3, v5}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 1089
    new-instance v5, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;

    invoke-direct {v5, p0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;-><init>(Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;)V

    .line 1091
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;

    invoke-direct {v0, v6, p2, v7}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$1;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 1130
    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->setDetachableImageProcessorListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    .line 1137
    invoke-static {v5}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->access$100(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 1132
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageConsumer;->receiveImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/SessionBase;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Functions;

    .line 1144
    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 1145
    invoke-static {v7}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/utils/Functions;-><init>(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    .line 1143
    return-object v0

    .line 1076
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 1077
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1141
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
