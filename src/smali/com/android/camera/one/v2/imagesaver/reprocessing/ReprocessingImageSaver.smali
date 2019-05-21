.class public final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ReadRunnable;,
        Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;,
        Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureResultTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final currentlyProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final currentlyProcessingQueue:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;",
            ">;"
        }
    .end annotation
.end field

.field private final imageTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private final inflightTickets:Lcom/android/camera/burst/TicketCounter;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

.field private final outputReadExecutor:Ljava/util/concurrent/Executor;

.field private final readLoopIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final reprocessingImageWriter:Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

.field private final reprocessingLimit$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final reprocessingLock:Ljava/lang/Object;

.field private final reprocessingSession:Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;

.field private final submitExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "ReprocImgSavr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;IILjava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/android/camera/burst/TicketCounter;

    invoke-direct {v0}, Lcom/android/camera/burst/TicketCounter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->inflightTickets:Lcom/android/camera/burst/TicketCounter;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->readLoopIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingSession:Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;

    .line 136
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingImageWriter:Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    .line 137
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    .line 138
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->outputReadExecutor:Ljava/util/concurrent/Executor;

    .line 141
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    sget-object v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;->INSTANCE:Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$ExceptionSettingUnusedElementProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;-><init>(Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingQueue:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    .line 143
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-direct {v0, p5}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->imageTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    .line 144
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-direct {v0, p4}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->captureResultTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    .line 146
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 147
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingLimit$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitReprocessingRequest(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->imageTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->outputReadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingImageWriter:Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingSession:Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingQueue:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->readLoopIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private final submitReprocessingRequest(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 233
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 236
    iget-object v1, p1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 237
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/util/concurrent/Futures;->withTimeout(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$3;

    invoke-direct {v2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$3;-><init>()V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 256
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getCapacity()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0, v6}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryIncreaseCapacity(I)Z

    .line 262
    :cond_0
    new-array v0, v6, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->whenAllSucceed([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    .line 265
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$4;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$5;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->submitExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 333
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->captureResultTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->close()V

    .line 221
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->imageTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->close()V

    .line 222
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->currentlyProcessingQueue:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;->close()V

    .line 223
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingLimit$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->jpegOutputStream:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 226
    :cond_0
    return-void
.end method

.method public final maxThroughput()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->reprocessingLimit$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .prologue
    .line 66
    check-cast p1, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;

    .line 1166
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->inflightTickets:Lcom/android/camera/burst/TicketCounter;

    invoke-virtual {v1}, Lcom/android/camera/burst/TicketCounter;->acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v1

    .line 1169
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$1;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$1;-><init>(Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    .line 1174
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1169
    invoke-virtual {v0, v2, v1}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1176
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;->captureResultTaskQueue:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage$1;-><init>(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessableImage;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->submit(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 66
    return-object v0
.end method
