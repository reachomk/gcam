.class public Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;
.super Ljava/lang/Object;
.source "ZslImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;
    }
.end annotation


# instance fields
.field private final fallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final maxLookBackNanos:J

.field private final maximumImageCount:I

.field private final minimumImageCount:I

.field private final threshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final zslMetadataFilter:Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;

.field private zslParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V
    .locals 1
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
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-lt p10, p9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 118
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 119
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->threshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

    .line 120
    iput p9, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->minimumImageCount:I

    .line 121
    iput p10, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->maximumImageCount:I

    .line 122
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslParameters:Ljava/util/Set;

    .line 123
    iput-object p14, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 124
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->fallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 125
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslMetadataFilter:Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;

    .line 126
    iput-wide p11, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->maxLookBackNanos:J

    .line 128
    const-string v0, "ZSLImgCaptureCmd"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    .line 134
    invoke-interface {p4, p10, p10, p7}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    move-result-object v0

    .line 133
    invoke-virtual {p3, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    .line 135
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getAcceptableFrames()Lcom/google/android/apps/camera/async/CloseableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->getAllAvailableFrames()Ljava/util/List;

    move-result-object v2

    .line 1178
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 198
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->pruneToThreshold(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 199
    new-instance v3, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 203
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 205
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 207
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 223
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    goto :goto_2

    .line 1181
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v4

    .line 1183
    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->maxLookBackNanos:J

    sub-long/2addr v4, v6

    .line 1184
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1185
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 1186
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1188
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    goto :goto_3

    :cond_2
    move-object v0, v1

    .line 1191
    goto/16 :goto_0

    .line 213
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslMetadataFilter:Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;->filterAcceptableImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 214
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 215
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 220
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 223
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    goto :goto_5

    .line 225
    :cond_6
    throw v1

    .line 226
    :cond_7
    return-object v3
.end method

.method protected static indicateZslExposure$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;->createExposureIndicator()Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private final pruneToThreshold(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const-wide/16 v0, 0x0

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 232
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 233
    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->threshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/one/v2/photo/CaptureThreshold;->tryReserveImagesForCapture(J)J

    move-result-wide v2

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 238
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getTimestamp()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    .line 239
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    goto :goto_1

    .line 241
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :cond_2
    return-object v1
.end method

.method private final tryCaptureZslImage$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAQ(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->getAcceptableFrames()Lcom/google/android/apps/camera/async/CloseableList;
    :try_end_0
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    const/4 v4, 0x0

    .line 1248
    :try_start_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    .line 1250
    :goto_0
    iget v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->maximumImageCount:I

    if-ge v5, v1, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {v7}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1255
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/CloseableList;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_1

    .line 284
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Unable to read images from zsl buffer."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    move v1, v3

    .line 285
    :goto_4
    return v1

    .line 271
    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->minimumImageCount:I

    if-ge v1, v5, :cond_3

    .line 272
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v5, "Too few 3A-converged images found: %d / %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 274
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->minimumImageCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 273
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v1, v5}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 275
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v3

    :goto_5
    if-ge v5, v7, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 276
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 282
    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :cond_2
    :try_start_6
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/CloseableList;->close()V
    :try_end_6
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_6 .. :try_end_6} :catch_1

    move v1, v3

    .line 278
    goto :goto_4

    .line 281
    :cond_3
    :try_start_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->trySaveZslBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRLEHKMOBQCD5PN8EP9B8______(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/util/List;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v1

    .line 282
    :try_start_8
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/apps/camera/async/CloseableList;->close()V
    :try_end_8
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method


# virtual methods
.method protected getAllAvailableFrames()Ljava/util/List;
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
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->dumpFrames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

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
    .line 158
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->fallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
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
    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 165
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->transformRepeatingRequest()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslRingBuffer:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    .line 166
    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->zslParameters:Ljava/util/Set;

    .line 167
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters(Ljava/util/List;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 164
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Executing zsl capture command."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "ZslImageCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->tryCaptureZslImage$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAQ(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 148
    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->fallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Executing zsl fallback command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->fallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V

    .line 152
    :cond_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "ZslImageCaptureCommand"

    return-object v0
.end method

.method protected trySaveZslBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRLEHKMOBQCD5PN8EP9B8______(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/util/List;)Z
    .locals 5
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
    .line 299
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v2

    const/4 v1, 0x0

    .line 300
    if-nez v2, :cond_1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "Unable to acquire image saver immediately."

    invoke-virtual {v0, v3}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 305
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "ZSL image available."

    invoke-virtual {v0, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 306
    invoke-static {p2}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->indicateZslExposure$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V

    .line 307
    invoke-interface {p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 308
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 309
    invoke-static {v2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->addAndCloseFrame(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/one/v2/imagemanagement/frame/Frame;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    throw v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 311
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
