.class public final Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;
.super Ljava/lang/Object;
.source "HdrPlusTorchImageCaptureCommand.java"

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

.field private final torchSwitch:Lcom/android/camera/one/v2/autofocus/TorchSwitch;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "HdrPTImgCapCmd"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;Lcom/android/camera/one/v2/autofocus/TorchSwitch;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V
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
            "Lcom/android/camera/one/v2/autofocus/TorchSwitch;",
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 107
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 108
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 109
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    .line 110
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 111
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 112
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 113
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 114
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    .line 116
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;

    .line 117
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->torchSwitch:Lcom/android/camera/one/v2/autofocus/TorchSwitch;

    .line 118
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    .line 119
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;

    .line 120
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    .line 122
    sget-object v1, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->TAG:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    .line 123
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Creating HdrPlusTorchImageCaptureCommand."

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 124
    invoke-interface {p9}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_full_metering_sweep_frames()I

    move-result v1

    iput v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->maxMeteringFrameCount:I

    .line 125
    invoke-interface {p9}, Lcom/android/camera/hdrplus/HdrPlusSession;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/InitParams;->getMax_payload_frames()I

    move-result v1

    iput v1, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->maxPayloadFrameCount:I

    .line 128
    invoke-virtual {p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getMaxImageCount()I

    move-result v1

    iget v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->maxMeteringFrameCount:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 129
    invoke-virtual {p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->getMaxImageCount()I

    move-result v1

    iget v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->maxPayloadFrameCount:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 131
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p3, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->noCrop:Landroid/graphics/Rect;

    .line 133
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 129
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
    .line 311
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->hdrPlusAvailability:Lcom/google/android/apps/camera/async/Observable;

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
    .line 319
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 139
    invoke-virtual {v4, v5}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 140
    invoke-virtual {v4, v5}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 141
    invoke-virtual {v4, v5}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withWhiteBalance(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v6

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->commonRequestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 143
    invoke-static {v4}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/core/Request;

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v5, v7}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 148
    invoke-static {v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    const/4 v5, 0x0

    .line 151
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v8, "Executing HdrPlus torch capture command."

    invoke-virtual {v7, v8}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "HdrPlusTorchCapture"

    invoke-interface {v7, v8}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "SessionAndTorchLock"

    invoke-interface {v7, v8}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 154
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object v10

    const/16 v16, 0x0

    .line 155
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->torchSwitch:Lcom/android/camera/one/v2/autofocus/TorchSwitch;

    invoke-interface {v7, v10, v4}, Lcom/android/camera/one/v2/autofocus/TorchSwitch;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-result-object v18

    .line 154
    const/4 v15, 0x0

    .line 156
    :try_start_2
    new-instance v19, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 154
    const/4 v14, 0x0

    .line 157
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v7}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 158
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->transform(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    .line 160
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v9, "3AConvergence"

    invoke-interface {v8, v9}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    invoke-interface {v8, v10, v6, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-result-object v20

    const/4 v13, 0x0

    .line 162
    :try_start_4
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->getFrameNumber()J

    move-result-wide v22

    .line 163
    new-instance v21, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->transform3A(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 165
    const/4 v11, 0x0

    .line 166
    const/4 v4, 0x0

    .line 168
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v8, "Metering"

    invoke-interface {v6, v8}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 169
    const/4 v8, 0x0

    .line 171
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    invoke-interface {v6}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->currentMode$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRJDLGN4T3DCLQ6ASJ9DPJIUKRDC5P78JB5EHIN4QBECT6MUP357C______()I

    move-result v12

    .line 173
    sget v6, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v12, v6, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->viewfinderMetadataSaver:Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;

    invoke-virtual {v6}, Lcom/android/camera/hdrplus/HdrPlusViewfinderMetadataSaver;->getLastGoodMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v9

    move-object/from16 v17, v4

    .line 192
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "Shot"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "StartShotCapture"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    move-object/from16 v6, p2

    .line 195
    invoke-interface/range {v4 .. v9}, Lcom/android/camera/hdrplus/HdrPlusSession;->startShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTG____(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/android/camera/hdrplus/HdrPlusShot;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-result-object v5

    .line 197
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 199
    if-nez v5, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "startShotCapture returned null. Payload failed."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    if-eqz v5, :cond_0

    .line 285
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setIsFlash(Z)V

    .line 298
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 302
    :cond_0
    if-eqz v20, :cond_1

    :try_start_8
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 303
    :cond_1
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v10, :cond_2

    :try_start_b
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 306
    :goto_2
    return-void

    .line 149
    :cond_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 176
    :cond_4
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v6, "SmartMetering"

    invoke-interface {v4, v6}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v4, v10, v0, v1, v2}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->startCapture(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/core/RequestBuilder;J)Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;

    move-result-object v4

    .line 182
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 186
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;->getMeteringAeResults()Lcom/google/googlex/gcam/AeResults;

    move-result-object v8

    .line 187
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController$SmartMeteringLock;->getMeteringMetadata()Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    move-result-object v9

    .line 188
    invoke-static {v9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v6}, Lcom/android/camera/debug/trace/Trace;->stop()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object/from16 v17, v4

    goto/16 :goto_1

    .line 203
    :cond_5
    :try_start_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->smartMeteringController:Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;

    .line 206
    invoke-interface {v4}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringController;->getLatestViewfinderFrame()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 209
    sget v4, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->LAZY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-ne v12, v4, :cond_19

    .line 210
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    const/4 v8, 0x1

    .line 218
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 213
    invoke-interface {v7, v5, v8, v9, v4}, Lcom/android/camera/hdrplus/HdrPlusSession;->computeAeResults$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTLKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ9DLGMEPAGE9NNGU9R55666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7C______(Lcom/android/camera/hdrplus/HdrPlusShot;ZLcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/AeResults;

    move-result-object v8

    .line 219
    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move v4, v12

    .line 225
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v7

    .line 228
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->noCrop:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 229
    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->setTemplateType(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 231
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/one/v2/core/RequestBuilder;->clearStreams()Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 233
    const/4 v6, 0x0

    .line 234
    sget v9, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-eq v4, v9, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 236
    invoke-interface {v6, v5, v8}, Lcom/android/camera/hdrplus/HdrPlusSession;->buildPayloadBurstSpec(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v6

    .line 240
    :cond_6
    sget v8, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    if-eq v4, v8, :cond_7

    .line 241
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->getFrame_requests()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameRequestVector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 242
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "Smart metering failed or inactive, falling back to metering burst."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    new-instance v6, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 244
    invoke-virtual {v4, v5, v6, v8, v10}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;->takeMeteringBurst(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v6

    .line 250
    :goto_4
    if-nez v6, :cond_10

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v6, "payloadBurstSpec is null. Payload failed."

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 284
    if-eqz v5, :cond_8

    .line 285
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setIsFlash(Z)V

    .line 298
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 302
    :cond_8
    if-eqz v20, :cond_9

    :try_start_f
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 303
    :cond_9
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v10, :cond_a

    :try_start_12
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 304
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_2

    .line 222
    :cond_b
    :try_start_13
    sget v4, Lcom/android/camera/one/v2/smartmetering/SmartMeteringMode;->OFF$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN6RB1E9Q6QPBKCLP6IRJ75T9MQOBIEH6MAT35E9KMSPQDDTI6AEO_:I

    goto/16 :goto_3

    .line 247
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v8, "Smart metering succeeded, skipping metering burst."

    invoke-virtual {v4, v8}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_4

    .line 284
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v5, :cond_d

    .line 285
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setIsFlash(Z)V

    .line 298
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    :cond_d
    throw v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 161
    :catch_0
    move-exception v4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 302
    :catchall_1
    move-exception v5

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    :goto_6
    if-eqz v20, :cond_e

    if-eqz v5, :cond_15

    :try_start_16
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :cond_e
    :goto_7
    :try_start_17
    throw v4
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 154
    :catch_1
    move-exception v4

    :try_start_18
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 303
    :catchall_2
    move-exception v5

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    :goto_8
    if-eqz v5, :cond_16

    :try_start_19
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :goto_9
    :try_start_1a
    throw v4
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 154
    :catch_2
    move-exception v4

    :try_start_1b
    throw v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 303
    :catchall_3
    move-exception v5

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    :goto_a
    if-eqz v5, :cond_17

    :try_start_1c
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :goto_b
    :try_start_1d
    throw v4
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 154
    :catch_3
    move-exception v4

    :try_start_1e
    throw v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 303
    :catchall_4
    move-exception v5

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    :goto_c
    if-eqz v10, :cond_f

    if-eqz v5, :cond_18

    :try_start_1f
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :cond_f
    :goto_d
    :try_start_20
    throw v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 304
    :catchall_5
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v5}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v5}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v4

    .line 260
    :cond_10
    :try_start_21
    new-instance v11, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v11, v0, v1, v10, v2}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$1;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->hdrPlusBurstTaker:Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;

    new-instance v8, Lcom/android/camera/one/v2/core/RequestBuilder;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->rawImageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 282
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v12

    .line 274
    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusBurstTaker;->takePayloadBurst(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/BurstSpec;Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/android/camera/stats/CaptureSessionStatsCollector;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    move-result v4

    .line 284
    if-eqz v5, :cond_11

    .line 285
    :try_start_22
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setIsFlash(Z)V

    .line 286
    if-eqz v4, :cond_14

    .line 287
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->complete()V

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v4

    new-instance v6, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$2;

    invoke-direct {v6, v5}, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand$2;-><init>(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    .line 290
    invoke-interface {v4, v6}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-virtual {v4}, Lcom/android/camera/stats/GcamUsageStatistics;->captureComputeEvent()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 302
    :cond_11
    :goto_e
    if-eqz v20, :cond_12

    :try_start_23
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 303
    :cond_12
    :try_start_24
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    :try_start_25
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    if-eqz v10, :cond_13

    :try_start_26
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    .line 304
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v4}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_2

    .line 298
    :cond_14
    :try_start_27
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    goto :goto_e

    .line 302
    :catchall_6
    move-exception v4

    move-object v5, v13

    goto/16 :goto_6

    :catch_4
    move-exception v6

    :try_start_28
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 303
    :catchall_7
    move-exception v4

    move-object v5, v14

    goto/16 :goto_8

    .line 302
    :cond_15
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto/16 :goto_7

    .line 303
    :catch_5
    move-exception v6

    :try_start_29
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catchall_8
    move-exception v4

    move-object v5, v15

    goto/16 :goto_a

    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/async/Lifetime;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_2
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    goto/16 :goto_9

    :catch_6
    move-exception v6

    :try_start_2a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catchall_9
    move-exception v4

    move-object/from16 v5, v16

    goto/16 :goto_c

    :cond_17
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/autofocus/TorchSwitch$TorchLock;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    goto/16 :goto_b

    :catch_7
    move-exception v6

    :try_start_2b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_18
    invoke-interface {v10}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    goto/16 :goto_d

    .line 284
    :catchall_a
    move-exception v4

    move-object v5, v11

    goto/16 :goto_5

    :cond_19
    move v4, v12

    goto/16 :goto_3
.end method
