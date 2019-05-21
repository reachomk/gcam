.class public Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;
.super Ljava/lang/Object;
.source "BurstImageProcessor.java"


# instance fields
.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 2038
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 2039
    return-void
.end method


# virtual methods
.method public encodeAndProcessImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Landroid/graphics/Rect;ILcom/android/camera/session/SessionBase;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/android/camera/session/SessionBase;",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            "TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 1051
    invoke-static {p3}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 1052
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 1053
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;

    .line 1056
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/base/Function;)V

    .line 1063
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 1426
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1427
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 1426
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNKIRB1CTIL8RQGE9NM6PBJECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASHRB9D4OORFDKNMERRFCTM6ABR3DTMMQRRE5TH62SR55T7N0T39DTN62R1R55D0____(Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :goto_0
    return-object v6

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    :try_start_1
    invoke-virtual {v6, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    iget-object v0, v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    .line 1074
    iget-object v1, v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    throw v0
.end method
