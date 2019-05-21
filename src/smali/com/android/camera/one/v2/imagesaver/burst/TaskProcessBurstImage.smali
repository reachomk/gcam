.class final Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskProcessBurstImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/processing/imagebackend/TaskImageContainer;"
    }
.end annotation


# instance fields
.field private final jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private final processingFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            "TR;>;"
        }
    .end annotation
.end field

.field private final processingResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/base/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/SessionBase;",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TR;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            "TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    sget v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V

    .line 35
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 36
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->processingResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 37
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->processingFunction:Lcom/google/common/base/Function;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;)Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;)Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->jpegEncoder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 43
    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->processingFunction:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage$1;-><init>(Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/burst/TaskProcessBurstImage;->processingResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 55
    return-void
.end method
