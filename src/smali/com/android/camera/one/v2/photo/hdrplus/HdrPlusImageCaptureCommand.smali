.class public final Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;
.super Ljava/lang/Object;
.source "HdrPlusImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

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

.field private final convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

.field private final flashMode:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

.field private final gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

.field private final hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final maxMeteringFrameCount:I

.field private final maxPayloadFrameCount:I

.field private final noCrop:Landroid/graphics/Rect;

.field private final rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

.field private final smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "HdrPImgCapCmd"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;",
            "Lcom/android/camera/memory/MemoryManager;",
            "Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 104
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 105
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 106
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    .line 107
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 108
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 109
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 110
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 111
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    .line 113
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;

    .line 114
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    .line 115
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;

    .line 116
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    .line 118
    sget-object v1, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->TAG:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    .line 119
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Creating HdrPlusImageCaptureCommand."

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 120
    invoke-interface {p9}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_full_metering_sweep_frames()I

    move-result v1

    iput v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->maxMeteringFrameCount:I

    .line 121
    invoke-interface {p9}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_payload_frames()I

    move-result v1

    iput v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->maxPayloadFrameCount:I

    .line 124
    invoke-virtual {p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getMaxImageCount()I

    move-result v1

    iget v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->maxMeteringFrameCount:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 125
    invoke-virtual {p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getMaxImageCount()I

    move-result v1

    iget v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->maxPayloadFrameCount:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 127
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p3, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 128
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->noCrop:Landroid/graphics/Rect;

    .line 129
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 134
    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;

    .line 134
    invoke-interface {v4}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v5, "WARNING: HdrPlusImageCaptureCommand was executed, but the command is not available. This may result in deadlocks or other unintended behavior."

    invoke-virtual {v4, v5}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 139
    :cond_0
    sget-object v4, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-static {v4}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->createWithFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v6

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/core/Request;

    .line 144
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v5, v7}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 145
    invoke-static {v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    const/4 v5, 0x0

    .line 148
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v8, "Executing HdrPlus capture command."

    invoke-virtual {v7, v8}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "HdrPlusCapture"

    invoke-interface {v7, v8}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "SessionAnd3AConvergence"

    invoke-interface {v7, v8}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v7}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 152
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v10

    const/4 v15, 0x0

    .line 153
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    invoke-interface {v8, v10, v6, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result-object v17

    .line 152
    const/4 v14, 0x0

    .line 154
    :try_start_2
    new-instance v18, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 152
    const/4 v13, 0x0

    .line 155
    :try_start_3
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->getFrameNumber()J

    move-result-wide v20

    .line 156
    new-instance v19, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->transform3A(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 158
    const/4 v11, 0x0

    .line 159
    const/4 v4, 0x0

    .line 160
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "Metering"

    invoke-interface {v6, v8}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 162
    const/4 v8, 0x0

    .line 164
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    invoke-interface {v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->currentMode$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRJDLGN4T3DCLQ6ASJ9DPJIUKRDC5P78JB5EHIN4QBECT6MUP357C______()I

    move-result v12

    .line 166
    sget v6, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v12, v6, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;

    invoke-virtual {v6}, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->getLastGoodMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v9

    move-object/from16 v16, v4

    .line 183
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "Shot"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "StartShotCapture"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    move-object/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/hdrplus/HdrPlusSession;->startShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTG____(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/android/camera/hdrplus/HdrPlusShot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move-result-object v5

    .line 187
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 189
    if-nez v5, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "startShotCapture returned null. Payload failed."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    if-eqz v5, :cond_1

    .line 287
    :try_start_6
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 291
    :cond_1
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v17, :cond_2

    :try_start_8
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_2
    if-eqz v10, :cond_3

    :try_start_9
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 294
    :goto_2
    return-void

    .line 146
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 169
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "SmartMetering"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v4, v10, v0, v1, v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->startCapture(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;J)Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;

    move-result-object v4

    .line 173
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 177
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;->getMeteringAeResults()Lcom/google/googlex/gcam/AeResults;

    move-result-object v8

    .line 178
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;->getMeteringMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v9

    .line 179
    invoke-static {v9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v6}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v16, v4

    goto :goto_1

    .line 194
    :cond_6
    :try_start_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    .line 197
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->getLatestViewfinderFrame()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 200
    sget v4, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v12, v4, :cond_19

    .line 201
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    const/4 v8, 0x1

    .line 209
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 204
    invoke-interface {v7, v5, v8, v9, v4}, Lcom/android/camera/hdrplus/HdrPlusSession;->computeAeResults$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTLKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ9DLGMEPAGE9NNGU9R55666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7C______(Lcom/android/camera/hdrplus/HdrPlusShot;ZLcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/AeResults;

    move-result-object v8

    .line 210
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move v4, v12

    .line 216
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v7

    .line 219
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->noCrop:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 220
    const/4 v6, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->setTemplateType(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 222
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/one/v2/core/RequestBuilder;->clearStreams()Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 224
    const/4 v6, 0x0

    .line 225
    sget v9, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-eq v4, v9, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 227
    invoke-interface {v6, v5, v8}, Lcom/android/camera/hdrplus/HdrPlusSession;->buildPayloadBurstSpec(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v6

    .line 231
    :cond_7
    sget v8, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-eq v4, v8, :cond_8

    .line 232
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->getFrame_requests()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameRequestVector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 233
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "Smart metering failed or inactive, falling back to metering burst."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    new-instance v6, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 235
    invoke-virtual {v4, v5, v6, v8, v10}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;->takeMeteringBurst(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v6

    .line 241
    :goto_4
    if-nez v6, :cond_11

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "payloadBurstSpec is null. Payload failed."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 275
    if-eqz v5, :cond_9

    .line 287
    :try_start_c
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 291
    :cond_9
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v17, :cond_a

    :try_start_e
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_a
    if-eqz v10, :cond_b

    :try_start_f
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 292
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_2

    .line 213
    :cond_c
    :try_start_10
    sget v4, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    goto/16 :goto_3

    .line 238
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v8, "Smart metering succeeded, skipping metering burst."

    invoke-virtual {v4, v8}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_4

    .line 275
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v5, :cond_e

    .line 287
    :try_start_11
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    :cond_e
    throw v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 152
    :catch_0
    move-exception v4

    :try_start_12
    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 291
    :catchall_1
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_6
    if-eqz v5, :cond_16

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :goto_7
    :try_start_14
    throw v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 152
    :catch_1
    move-exception v4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 291
    :catchall_2
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_8
    if-eqz v17, :cond_f

    if-eqz v5, :cond_17

    :try_start_16
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :cond_f
    :goto_9
    :try_start_17
    throw v4
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 152
    :catch_2
    move-exception v4

    :try_start_18
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 291
    :catchall_3
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_a
    if-eqz v10, :cond_10

    if-eqz v5, :cond_18

    :try_start_19
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :cond_10
    :goto_b
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 292
    :catchall_4
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v5}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v5}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v4

    .line 251
    :cond_11
    :try_start_1b
    new-instance v11, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v10, v1}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$1;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    new-instance v8, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 272
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v12

    .line 264
    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;->takePayloadBurst(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/BurstSpec;Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/android/camera/stats/CaptureSessionStatsCollector;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-result v4

    .line 275
    if-eqz v5, :cond_12

    .line 276
    if-eqz v4, :cond_15

    .line 277
    :try_start_1c
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->complete()V

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v4

    new-instance v6, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$2;

    invoke-direct {v6, v5}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand$2;-><init>(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    invoke-interface {v4, v6}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-virtual {v4}, Lcom/android/camera/stats/GcamUsageStatistics;->captureComputeEvent()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 291
    :cond_12
    :goto_c
    :try_start_1d
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v17, :cond_13

    :try_start_1e
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :cond_13
    if-eqz v10, :cond_14

    :try_start_1f
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 292
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_2

    .line 287
    :cond_15
    :try_start_20
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto :goto_c

    .line 291
    :catchall_5
    move-exception v4

    move-object v5, v13

    goto/16 :goto_6

    :catch_3
    move-exception v6

    :try_start_21
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catchall_6
    move-exception v4

    move-object v5, v14

    goto/16 :goto_8

    :cond_16
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto/16 :goto_7

    :catch_4
    move-exception v6

    :try_start_22
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catchall_7
    move-exception v4

    move-object v5, v15

    goto/16 :goto_a

    :cond_17
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto/16 :goto_9

    :catch_5
    move-exception v6

    :try_start_23
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_18
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    goto/16 :goto_b

    .line 275
    :catchall_8
    move-exception v4

    move-object v5, v11

    goto/16 :goto_5

    :cond_19
    move v4, v12

    goto/16 :goto_3
.end method
