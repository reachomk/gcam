.class public final Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;
.super Ljava/lang/Object;
.source "AfRequestSenderImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/AfRequestSender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/AfRequestSender",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

.field private final captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

.field private final updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/gms/internal/zzxg$zza;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;",
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;",
            "Lcom/google/android/apps/camera/async/HandlerExecutor;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/gms/internal/zzxg$zza;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 54
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    .line 55
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 56
    iput-object p4, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 57
    iput-object p5, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    .line 58
    iput-object p6, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    .line 59
    iput-object p7, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    return-object v0
.end method

.method private final createConvergeRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;ZLjava/util/List;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 170
    if-eqz p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 172
    invoke-virtual {v0, p1}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->createRecordRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    move-object v1, v0

    .line 181
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 182
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->createPreviewRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 185
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 186
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 188
    return-object v1
.end method


# virtual methods
.method public final sendAfRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;ZLandroid/graphics/PointF;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;",
            "Z",
            "Landroid/graphics/PointF;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 71
    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    .line 70
    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4, v5}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->createForNormalizedCoordinates$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267D662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267D4KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T9MAT3KD5N6ESPJ84TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFC5QN8RR6DTHNASPFA1NMIRJK9LIN8PBID5N6EK31E9GMQPBKCLP76EO_(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/google/android/gms/internal/zzxg$zza;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    move-result-object v4

    .line 72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    invoke-interface {v5, v4}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    invoke-interface {v5, v4}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 79
    :cond_0
    new-instance v11, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;

    invoke-direct {v11}, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;-><init>()V

    .line 80
    new-instance v4, Lcom/android/camera/one/v2/autofocus/AfTriggerResult;

    invoke-direct {v4}, Lcom/android/camera/one/v2/autofocus/AfTriggerResult;-><init>()V

    .line 81
    new-instance v8, Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v11, v4}, Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;Lcom/android/camera/one/v2/autofocus/AfTriggerResult;)V

    .line 84
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v10

    .line 85
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 86
    invoke-virtual {v8}, Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;->getScanResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 87
    new-instance v5, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;

    invoke-direct {v5, v10}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;-><init>(Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v4, v5}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 101
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->createConvergeRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;ZLjava/util/List;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v7

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->createConvergeRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;ZLjava/util/List;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v9

    .line 1160
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 1161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1160
    invoke-virtual {v9, v4, v5}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v4, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$2;-><init>(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v12, v4}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v11}, Lcom/android/camera/one/v2/autofocus/AeStatePassiveResult;->getResultFrame()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v11, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p1

    move-object v15, v8

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$3;-><init>(Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 127
    invoke-static {v4, v11, v5}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v4

    .line 149
    :catch_0
    move-exception v4

    .line 150
    invoke-static {v4}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_0
.end method
