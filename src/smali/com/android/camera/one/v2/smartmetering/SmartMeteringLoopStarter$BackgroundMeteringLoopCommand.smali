.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;
.super Ljava/lang/Object;
.source "SmartMeteringLoopStarter.java"

# interfaces
.implements Lcom/android/camera/one/v2/command/CameraCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundMeteringLoopCommand"
.end annotation


# instance fields
.field private final meteringLoopDone:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final smartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

.field private synthetic this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->smartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    .line 122
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->meteringLoopDone:Lcom/google/common/util/concurrent/SettableFuture;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;B)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;-><init>(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->meteringLoopDone:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    .line 128
    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$300(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$200(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 134
    :goto_0
    :try_start_1
    new-instance v4, Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    invoke-direct {v4}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$400(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v5

    .line 136
    :try_start_2
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    .line 138
    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$500(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 140
    invoke-virtual {v1, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 142
    invoke-virtual {v1, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 144
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$600(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/common/FrameClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/FrameClock;->getCurrentFrameIndex()J

    move-result-wide v6

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    const/4 v8, 0x0

    .line 146
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 145
    invoke-interface {v5, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 147
    if-eqz v5, :cond_0

    :try_start_3
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 149
    :cond_0
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 151
    :try_start_4
    invoke-virtual {v4}, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 152
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v5}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 154
    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 158
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v8

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 160
    invoke-interface {v0, v5}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x69

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Raw smart metering image and metadata have differenttimestamps: image = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", metadata = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static {v4, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79HNMUS2JEHGN4T35E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFEDMM2SJKDLIN8PBID5N6EBQ3C5O78TBICL96ASRLDHQ4CQBCEHIN4EO_(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->shouldAccept(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->smartMeteringProcessor:Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;

    invoke-interface {v4, v1, v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;->process(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v0, v2

    .line 173
    :goto_1
    if-eqz v0, :cond_2

    .line 174
    :try_start_5
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 178
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$600(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/one/v2/common/FrameClock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$900(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/one/v2/common/FrameClock;->waitUntilFrame(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_3
    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 181
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->meteringLoopDone:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    throw v0

    .line 135
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 147
    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_5
    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    :try_start_a
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_3
    :goto_6
    :try_start_b
    throw v0

    .line 180
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 147
    :catch_2
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    .line 168
    :cond_5
    :try_start_c
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$800(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v4, "skipping smart metering frame due to touch to expose / focus"

    invoke-virtual {v0, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v0, v1

    goto :goto_1

    .line 171
    :catch_3
    move-exception v0

    :try_start_d
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$BackgroundMeteringLoopCommand;->this$0:Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->access$800(Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v4, "Metadata never arrived for metering frame"

    invoke-virtual {v0, v4}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 173
    if-eqz v1, :cond_2

    .line 174
    :try_start_e
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    goto :goto_2

    .line 173
    :catchall_4
    move-exception v0

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    :cond_6
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 180
    :catch_4
    move-exception v3

    :try_start_f
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 147
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "BackgroundMeteringLoop"

    return-object v0
.end method
