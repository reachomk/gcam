.class final Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;
.super Ljava/lang/Object;
.source "AeAfActiveScanner.java"

# interfaces
.implements Lcom/android/camera/one/v2/command/CameraCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$000(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;

    move-result-object v2

    const/4 v1, 0x0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 85
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$100(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    .line 86
    new-instance v3, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    invoke-direct {v3, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;-><init>()V

    .line 91
    new-instance v4, Lcom/android/camera/one/v2/autofocus/AeModePassiveResult;

    iget-object v5, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 92
    invoke-static {v5}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB585J42ORKD5R6AKR3C5N6SPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CDQ6ITJ5ADHM2RIICLONAPBJEH17AQBCCHIN4EO_(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->getControlAeMode()Lcom/google/android/apps/camera/proxy/camera2/ControlAeMode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/autofocus/AeModePassiveResult;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ControlAeMode;)V

    .line 95
    iget-object v5, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 96
    invoke-static {v5}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB585J42ORKD5R6AKR3C5N6SPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CDQ6ITJ5ADHM2RIICLONAPBJEH17AQBCCHIN4EO_(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->createConvergeRequest(Lcom/android/camera/one/v2/core/RequestBuilder;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 98
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forPartialMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    .line 97
    invoke-virtual {v5, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 100
    invoke-static {v4}, Lcom/android/camera/one/v2/core/FrameServerModule;->forPartialMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 101
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    .line 102
    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 101
    invoke-interface {v2, v6, v7}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 106
    invoke-virtual {v4}, Lcom/android/camera/one/v2/autofocus/AeModePassiveResult;->awaitResultFrameNumber()J

    move-result-wide v6

    .line 109
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 110
    invoke-static {v4}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB585J42ORKD5R6AKR3C5N6SPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CDQ6ITJ5ADHM2RIICLONAPBJEH17AQBCCHIN4EO_(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->createTriggerRequest(Lcom/android/camera/one/v2/core/RequestBuilder;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 111
    iget-object v8, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    invoke-static {v8}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$300(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->getTriggerResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 112
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/camera/one/v2/core/Request;

    const/4 v9, 0x0

    .line 113
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 112
    invoke-interface {v2, v4, v8}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 116
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->awaitResultFrameNumber()J

    move-result-wide v8

    .line 120
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 121
    invoke-interface {v2, v0, v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$400(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 126
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeScanResult$5154KAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGB6ADHM2RIICLPNAR3K7C______(JJ)Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 149
    :cond_0
    return-void

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;->this$0:Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 142
    invoke-static {v4}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB585J42ORKD5R6AKR3C5N6SPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CDQ6ITJ5ADHM2RIICLONAPBJEH17AQBCCHIN4EO_(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->createCancelRequest(Lcom/android/camera/one/v2/core/RequestBuilder;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 143
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 143
    invoke-interface {v2, v3, v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 145
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method
