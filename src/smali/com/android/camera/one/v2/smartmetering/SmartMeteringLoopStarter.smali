.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;
.super Ljava/lang/Object;
.source "SmartMeteringLoopStarter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;
    }
.end annotation


# instance fields
.field private final cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

.field private final captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

.field private final commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final frameClock:Lcom/android/camera/one/v2/common/FrameClock;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final maxMeteringImageCount:I

.field private final meteringFramePeriod:I

.field private final rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;Lcom/android/camera/one/v2/common/FrameClock;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/command/CameraCommandExecutor;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;",
            "Lcom/android/camera/one/v2/common/FrameClock;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 63
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 64
    iput-object p3, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 65
    iput-object p4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    .line 66
    iput-object p5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->frameClock:Lcom/android/camera/one/v2/common/FrameClock;

    .line 67
    iput-object p7, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 68
    iput p8, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->meteringFramePeriod:I

    .line 69
    iput p9, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->maxMeteringImageCount:I

    .line 70
    const-string v0, "SMLoopStarter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->log:Lcom/android/camera/debug/Logger;

    .line 71
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->maxMeteringImageCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/core/FrameServer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/common/FrameClock;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->frameClock:Lcom/android/camera/one/v2/common/FrameClock;

    return-object v0
.end method

.method static synthetic access$700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79HNMUS2JEHGN4T35E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFEDMM2SJKDLIN8PBID5N6EBQ3C5O78TBICL96ASRLDHQ4CQBCEHIN4EO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->meteringFramePeriod:I

    return v0
.end method


# virtual methods
.method public final sendFilteredFrame(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;

    move-result-object v3

    const/4 v1, 0x0

    .line 205
    const/4 v2, 0x0

    move v0, v2

    .line 206
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 207
    add-int/lit8 v2, v0, 0x1

    .line 208
    :try_start_0
    new-instance v0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;-><init>()V

    .line 209
    new-instance v4, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v4, p2}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 211
    invoke-virtual {v4, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 213
    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 215
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 214
    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameRequestProcessor;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 217
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .line 219
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 220
    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v6}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    .line 222
    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 226
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v6

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 228
    invoke-interface {v0, v8}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x69

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Raw smart metering image and metadata have differenttimestamps: image = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", metadata = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-static {v5, v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 232
    :cond_0
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v6

    cmp-long v5, v6, p4

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->captureResultFilter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T1M2S3KELP6AKJ5EDQMOT26D5M78PBI7C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    .line 233
    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->shouldAccept(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-interface {p3, v4, v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;->process(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    .line 250
    :cond_1
    const/16 v2, 0x1e

    if-lt v0, v2, :cond_5

    .line 251
    :try_start_2
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Unable to acquire a valid frame after 30 attempts!!!"

    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_1
    if-eqz v1, :cond_6

    :try_start_4
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    .line 239
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->log:Lcom/android/camera/debug/Logger;

    const-string v5, "skipping smart metering frame due to touch to expose / focus"

    invoke-virtual {v0, v5}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    if-eqz v4, :cond_4

    .line 245
    :try_start_6
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v0, v2

    goto/16 :goto_0

    .line 242
    :catch_1
    move-exception v0

    :try_start_7
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->log:Lcom/android/camera/debug/Logger;

    const-string v5, "Metadata never arrived for metering frame"

    invoke-virtual {v0, v5}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 244
    if-eqz v4, :cond_4

    .line 245
    :try_start_8
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    move v0, v2

    goto/16 :goto_0

    .line 244
    :catchall_1
    move-exception v0

    if-eqz v4, :cond_3

    .line 245
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    :cond_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 254
    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 248
    goto/16 :goto_0

    .line 254
    :cond_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V

    return-void

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V

    goto :goto_2
.end method

.method public final start(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;B)V

    .line 99
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$1;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 108
    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->access$100(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
