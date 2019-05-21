.class final Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;
.super Ljava/lang/Object;
.source "BasicFrameRequestProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameRequestProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor$CaptureCallback;
    }
.end annotation


# instance fields
.field private final cameraHandler:Landroid/os/Handler;

.field private final captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

.field private final globalOnStartedIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private tagCounter:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 113
    iput-object p2, p0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->cameraHandler:Landroid/os/Handler;

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->tagCounter:J

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->globalOnStartedIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->globalOnStartedIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;",
            "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 140
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/Request;

    .line 1119
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->tagCounter:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1120
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->tagCounter:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->tagCounter:J

    .line 148
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getResponseListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getParentMetadata()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    .line 154
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v6, "Repeating reprocessing requests are not supported"

    .line 153
    invoke-static {v3, v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v6

    .line 157
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getParentMetadata()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    invoke-interface {v6, v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createReprocessCaptureRequest(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v3

    move-object v6, v3

    .line 162
    :goto_2
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 163
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getTargets()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/FrameTarget;

    .line 165
    sget-object v15, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p2

    if-ne v0, v15, :cond_2

    .line 166
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v3

    .line 170
    :goto_4
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;->getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;->getSurfaces()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 234
    :catch_0
    move-exception v2

    .line 235
    :try_start_1
    new-instance v3, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v3, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 154
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 159
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getTemplateType()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v3

    move-object v6, v3

    goto :goto_2

    .line 168
    :cond_2
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v3

    goto :goto_4

    .line 178
    :cond_3
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_4
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 183
    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->addTarget(Landroid/view/Surface;)V

    goto :goto_5

    .line 185
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getParameters()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 1243
    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/Request$Parameter;->getKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/Request$Parameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v14, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    .line 189
    :cond_6
    invoke-static {v12}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v3

    invoke-interface {v7, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-interface {v8, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v6, v11}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->setTag(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v6}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 199
    :cond_7
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 200
    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    new-instance v3, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor$CaptureCallback;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor$CaptureCallback;-><init>(Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->cameraHandler:Landroid/os/Handler;

    invoke-interface {v2, v9, v3, v6}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    :cond_8
    :goto_7
    :try_start_4
    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :cond_9
    if-ge v4, v5, :cond_e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/android/camera/one/v2/core/Request;

    .line 229
    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/Request;->getResponseListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 230
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceAborted(I)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 205
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->captureSession:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    new-instance v3, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor$CaptureCallback;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor$CaptureCallback;-><init>(Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/core/BasicFrameRequestProcessor;->cameraHandler:Landroid/os/Handler;

    invoke-interface {v2, v9, v3, v6}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->captureBurst(Ljava/util/List;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 210
    :catch_1
    move-exception v2

    .line 217
    :try_start_6
    new-instance v3, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v3, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    :catchall_1
    move-exception v2

    move-object v6, v2

    .line 222
    :try_start_7
    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v3, 0x0

    move v5, v3

    :goto_9
    if-ge v5, v7, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    .line 223
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;->abort()V

    goto :goto_9

    .line 228
    :cond_b
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :cond_c
    if-ge v3, v5, :cond_d

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/camera/one/v2/core/Request;

    .line 229
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/Request;->getResponseListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 230
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceAborted(I)V

    goto :goto_a

    .line 232
    :cond_d
    throw v6
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 237
    :cond_e
    monitor-exit p0

    return-void
.end method
