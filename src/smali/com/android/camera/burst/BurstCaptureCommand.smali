.class public final Lcom/android/camera/burst/BurstCaptureCommand;
.super Ljava/lang/Object;
.source "BurstCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/command/CameraCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final burstFrameDropper:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
            ">;"
        }
    .end annotation
.end field

.field private final burstInputSurface:Landroid/view/Surface;

.field private final burstLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

.field private final burstResults:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final captureEndedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final frameSaver:Lcom/android/camera/burst/FrameSaver;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final maxFramesToRequest:I

.field private final minFramesToRequest:I

.field private final requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final restorePreviewCommand:Ljava/lang/Runnable;

.field private final shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final useFlash:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "BurstCapCommand"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Ljava/lang/Runnable;IILcom/android/camera/debug/trace/Trace;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Landroid/view/Surface;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
            ">;",
            "Lcom/android/camera/burst/FrameSaver;",
            "Ljava/lang/Runnable;",
            "II",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 83
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstResults:Lcom/google/common/util/concurrent/SettableFuture;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->captureEndedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 135
    iput-object p1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 136
    iput-object p2, p0, Lcom/android/camera/burst/BurstCaptureCommand;->requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 137
    iput-object p3, p0, Lcom/android/camera/burst/BurstCaptureCommand;->useFlash:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 138
    iput-object p4, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 139
    iput-object p5, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstInputSurface:Landroid/view/Surface;

    .line 140
    iput-object p6, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstFrameDropper:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 141
    iput-object p7, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    .line 142
    iput-object p8, p0, Lcom/android/camera/burst/BurstCaptureCommand;->restorePreviewCommand:Ljava/lang/Runnable;

    .line 143
    iput p9, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    .line 144
    iput p10, p0, Lcom/android/camera/burst/BurstCaptureCommand;->maxFramesToRequest:I

    .line 145
    iput-object p11, p0, Lcom/android/camera/burst/BurstCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 146
    iput-object p12, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 147
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/BurstCaptureCommand;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static canStartBurst(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;I)Z
    .locals 5

    .prologue
    .line 282
    add-int/lit8 v1, p1, 0x5

    .line 283
    invoke-interface {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    sget-object v2, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "canStartBurst : availableCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minCapacityNeeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getRequestWithAdjustedFlash()Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x2

    const/4 v10, 0x4

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 352
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->useFlash:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 359
    invoke-static {v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    .line 361
    new-array v4, v9, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v6, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 364
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    new-instance v6, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 365
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v6, v5, v9

    new-instance v6, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v6, v5, v2

    new-instance v1, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v1, v5, v11

    new-instance v1, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 371
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v1, v5, v10

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 374
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v5, v1

    .line 363
    invoke-static {v5}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v4, v3

    .line 362
    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->with([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->withTemplate(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v3

    .line 355
    goto :goto_0
.end method


# virtual methods
.method public final getAcquiredFrames()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstResults:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final getMaxFrameRequest()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->maxFramesToRequest:I

    return v0
.end method

.method public final run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Need to request at least one frame!"

    invoke-static {v0, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 153
    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    iget v4, p0, Lcom/android/camera/burst/BurstCaptureCommand;->maxFramesToRequest:I

    if-gt v0, v4, :cond_1

    :goto_1
    const-string v0, "ImageReader is too small for burst!"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "BurstCaptureCommand#run"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-result-object v4

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v5

    .line 160
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 164
    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    add-int/lit8 v0, v0, 0x5

    .line 165
    invoke-interface {v5, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 173
    new-instance v6, Lcom/android/camera/burst/RingBuffer;

    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    iget-object v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstFrameDropper:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v7, p0, Lcom/android/camera/burst/BurstCaptureCommand;->frameSaver:Lcom/android/camera/burst/FrameSaver;

    iget-object v8, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstMode:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    invoke-direct {v6, v0, v1, v7, v8}, Lcom/android/camera/burst/RingBuffer;-><init>(ILcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 177
    :try_start_3
    iget v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->minFramesToRequest:I

    :goto_2
    iget v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->maxFramesToRequest:I

    if-ge v0, v1, :cond_2

    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-interface {v5, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v7, Lcom/android/camera/burst/BurstExecutorFactory;

    invoke-direct {v7, v6}, Lcom/android/camera/burst/BurstExecutorFactory;-><init>(Lcom/android/camera/burst/RingBuffer;)V

    .line 178
    invoke-static {v1, v7}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    .line 1194
    new-instance v1, Lcom/android/camera/burst/RingBuffer$1;

    invoke-direct {v1, v6, v0}, Lcom/android/camera/burst/RingBuffer$1;-><init>(Lcom/android/camera/burst/RingBuffer;Lcom/android/camera/one/v2/core/FrameTarget;)V

    .line 1325
    invoke-direct {p0}, Lcom/android/camera/burst/BurstCaptureCommand;->getRequestWithAdjustedFlash()Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 1393
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1395
    new-instance v7, Landroid/util/Range;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1396
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v8, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1329
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/FrameTarget;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1331
    new-instance v1, Lcom/android/camera/burst/BurstCaptureCommand$2;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/BurstCaptureCommand$2;-><init>(Lcom/android/camera/burst/BurstCaptureCommand;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 196
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    .line 197
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 196
    invoke-interface {v4, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Lcom/android/camera/burst/BurstCaptureCommand;->getRequestWithAdjustedFlash()Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 201
    invoke-interface {v4, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    const/4 v1, 0x0

    .line 2317
    invoke-direct {p0}, Lcom/android/camera/burst/BurstCaptureCommand;->getRequestWithAdjustedFlash()Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    .line 2318
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x1

    .line 2319
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2318
    invoke-virtual {v7, v8, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 205
    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 204
    invoke-interface {v4, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    move v1, v2

    .line 208
    :cond_4
    :goto_3
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->isClosed()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    if-nez v0, :cond_7

    .line 211
    :try_start_4
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 2384
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 2385
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x23

    aput v9, v7, v8

    invoke-static {v0, v7}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getLargestImageAndClose(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;[I)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v7

    .line 2386
    if-nez v7, :cond_5

    move-object v0, v3

    .line 213
    :goto_4
    if-eqz v0, :cond_c

    .line 214
    invoke-virtual {v6, v0}, Lcom/android/camera/burst/RingBuffer;->insertImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 215
    add-int/lit8 v0, v1, 0x1

    :goto_5
    move v1, v0

    .line 221
    :goto_6
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-lt v1, v0, :cond_4

    .line 222
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->lockIfFull()Z

    .line 223
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_5
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    .line 226
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2386
    :cond_5
    :try_start_6
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-direct {v0, v7, v2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 218
    :catch_1
    move-exception v0

    :try_start_7
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_7
    .catch Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    .line 173
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 240
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_8
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 158
    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 241
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_9
    if-eqz v1, :cond_a

    :try_start_c
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_a
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 157
    :catch_4
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 242
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_b
    if-eqz v4, :cond_6

    if-eqz v3, :cond_b

    :try_start_f
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_6
    :goto_c
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catch_5
    move-exception v0

    .line 243
    :try_start_11
    iget-object v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstResults:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 246
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->restorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 247
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 248
    :goto_d
    return-void

    .line 230
    :cond_7
    :try_start_12
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->captureEndedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 3295
    :try_start_13
    invoke-direct {p0}, Lcom/android/camera/burst/BurstCaptureCommand;->getRequestWithAdjustedFlash()Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 3296
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 3297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3296
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 3298
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 3307
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v1, v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 3308
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request;

    const/4 v2, 0x0

    .line 3309
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 3308
    invoke-interface {v4, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_13
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 236
    :goto_e
    :try_start_14
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->getAndRemoveAllImages()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->burstResults:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 240
    :try_start_15
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 241
    :try_start_16
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 242
    if-eqz v4, :cond_8

    :try_start_17
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->restorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 247
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_d

    .line 234
    :catch_6
    move-exception v0

    :goto_f
    :try_start_18
    sget-object v0, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Ljava/lang/String;

    const-string v1, "Could not submit unlock AF request! Perhaps camera is shutting down."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_e

    .line 240
    :catchall_3
    move-exception v0

    move-object v1, v3

    goto/16 :goto_7

    :catch_7
    move-exception v2

    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 241
    :catchall_4
    move-exception v0

    move-object v1, v3

    goto/16 :goto_9

    .line 240
    :cond_9
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto/16 :goto_8

    .line 241
    :catch_8
    move-exception v2

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 242
    :catchall_5
    move-exception v0

    goto/16 :goto_b

    .line 241
    :cond_a
    invoke-interface {v5}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto/16 :goto_a

    .line 242
    :catch_9
    move-exception v1

    :try_start_1b
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto/16 :goto_c

    .line 246
    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->restorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 247
    iget-object v1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 242
    :cond_b
    :try_start_1c
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_c

    .line 234
    :catch_a
    move-exception v0

    goto :goto_f

    :cond_c
    move v0, v1

    goto/16 :goto_5
.end method

.method public final stopCapture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 258
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->captureEndedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "BurstCapture"

    return-object v0
.end method
