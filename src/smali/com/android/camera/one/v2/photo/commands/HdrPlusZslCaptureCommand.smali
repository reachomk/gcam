.class public final Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;
.super Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;
.source "HdrPlusZslCaptureCommand.java"


# instance fields
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

.field private final gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

.field private final hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final zslParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Lcom/android/camera/one/v2/photo/CaptureThreshold;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;",
            "Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;",
            "IIJ",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V

    .line 98
    move/from16 v0, p10

    move/from16 v1, p9

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 100
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->zslParameters:Ljava/util/Set;

    .line 101
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 102
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 103
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    .line 104
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    .line 106
    const-string v2, "HdrZslImgCptrCmd"

    invoke-static {v2}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    .line 107
    return-void

    .line 98
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getAllAvailableFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->forkFrames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
    .locals 3
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
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    .line 112
    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->zslParameters:Ljava/util/Set;

    .line 113
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters(Ljava/util/List;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 111
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "HdrPlusZslCaptureCommand"

    return-object v0
.end method

.method protected final trySaveZslBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRLEHKMOBQCD5PN8EP9B8______(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 137
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Acquired metadata from the first frame."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Starting HdrPlus#ZslShotCapture."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    .line 150
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    const/4 v5, -0x1

    move-object v2, p2

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/hdrplus/HdrPlusSession;->startZslShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7D4IIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUQ34E9O6OTBJ5T468SIGDHQN6KR8DTQ3M___(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;I)Lcom/android/camera/hdrplus/HdrPlusShot;

    move-result-object v5

    .line 154
    if-nez v5, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Failed to initiate HDR plus shot capture."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Failed to acquire metadata from the first frame."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Flashing shot capture indicator and releasing image capture lock."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 161
    invoke-static {p2}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->indicateZslExposure$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V

    .line 162
    invoke-interface {p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    const/4 v1, 0x0

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    new-instance v2, Lcom/google/googlex/gcam/BurstSpec;

    invoke-direct {v2}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-interface {v0, v5, v2}, Lcom/android/camera/hdrplus/HdrPlusSession;->beginPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/BurstSpec;)V

    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    move v4, v0

    move v2, v1

    :goto_1
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 169
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 170
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getLargestImageAndClose(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;[I)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v7

    .line 175
    if-eqz v7, :cond_1

    const/4 v3, 0x1

    :goto_2
    or-int/2addr v2, v3

    .line 176
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    invoke-interface {v3, v5, v4, v1, v7}, Lcom/android/camera/hdrplus/HdrPlusSession;->addPayloadFrame(Lcom/android/camera/hdrplus/HdrPlusShot;ILcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 177
    if-eqz v7, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    add-int/lit8 v3, v4, 0x1

    .line 180
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 181
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v8

    .line 182
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x5d

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Acquired frame "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for burst "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 190
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 191
    goto :goto_1

    .line 175
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    add-int/lit8 v3, v4, 0x1

    .line 186
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 187
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v8

    .line 188
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x69

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Ignoring missing raw frame "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for burst "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 195
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_5
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    invoke-interface {v1, v5}, Lcom/android/camera/hdrplus/HdrPlusSession;->endPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->complete()V

    .line 198
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;

    invoke-direct {v2, v5}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;-><init>(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    invoke-interface {v1, v2}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ZSL payload for burst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-virtual {v1}, Lcom/android/camera/stats/GcamUsageStatistics;->captureComputeEvent()V

    .line 208
    :goto_5
    throw v0

    .line 213
    :catch_1
    move-exception v0

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 195
    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    invoke-interface {v0, v5}, Lcom/android/camera/hdrplus/HdrPlusSession;->endPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->complete()V

    .line 198
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;

    invoke-direct {v1, v5}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;-><init>(Lcom/android/camera/hdrplus/HdrPlusShot;)V

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ZSL payload for burst "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    invoke-virtual {v0}, Lcom/android/camera/stats/GcamUsageStatistics;->captureComputeEvent()V

    .line 193
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 207
    :cond_4
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ZSL payload for burst "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 213
    :catch_2
    move-exception v0

    goto :goto_6

    .line 207
    :cond_5
    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->abort()V

    .line 208
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    invoke-virtual {v5}, Lcom/android/camera/hdrplus/HdrPlusShot;->getBurstId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ZSL payload for burst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 195
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 170
    nop

    :array_0
    .array-data 4
        0x25
        0x26
        0x20
    .end array-data
.end method
