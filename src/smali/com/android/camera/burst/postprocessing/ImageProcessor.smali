.class final Lcom/android/camera/burst/postprocessing/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;,
        Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;,
        Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;,
        Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;
    }
.end annotation


# instance fields
.field private final bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

.field private final burstUuid:Ljava/util/UUID;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

.field private final stackFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/StackFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/UUID;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/concurrent/Executor;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/StackFrame;",
            ">;",
            "Ljava/util/UUID;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->stackFrames:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    .line 111
    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->burstUuid:Ljava/util/UUID;

    .line 112
    iput-object p4, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->executor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object p5, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    .line 114
    return-void
.end method

.method private final getStackFrameForTimestamp(J)Lcom/android/camera/burst/postprocessing/StackFrame;
    .locals 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->stackFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/postprocessing/StackFrame;

    .line 240
    iget-wide v2, v0, Lcom/android/camera/burst/postprocessing/StackFrame;->timestamp:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 241
    return-object v0

    .line 244
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "StackFrame for timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final saveOpenImages(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/util/AspectRatio;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;",
            "Lcom/android/camera/util/AspectRatio;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleAt(J)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v11

    const/4 v8, 0x0

    .line 189
    :try_start_0
    invoke-interface {v11}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/HiResImage;

    invoke-virtual {v2}, Lcom/android/camera/burst/HiResImage;->getInMemoryImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2221
    invoke-virtual {v3}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/burst/postprocessing/ImageProcessor;->getStackFrameForTimestamp(J)Lcom/android/camera/burst/postprocessing/StackFrame;

    move-result-object v5

    .line 2222
    new-instance v12, Lcom/android/camera/burst/xmp/MetadataAdder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->burstUuid:Ljava/util/UUID;

    iget-boolean v6, v5, Lcom/android/camera/burst/postprocessing/StackFrame;->isPrimary:Z

    invoke-direct {v12, v2, v6}, Lcom/android/camera/burst/xmp/MetadataAdder;-><init>(Ljava/util/UUID;Z)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    iget-object v6, v5, Lcom/android/camera/burst/postprocessing/StackFrame;->captureSession:Lcom/android/camera/session/StackedCaptureSession;

    new-instance v7, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;

    iget-object v13, v5, Lcom/android/camera/burst/postprocessing/StackFrame;->sessionDirFrameFile:Ljava/io/File;

    iget-object v5, v5, Lcom/android/camera/burst/postprocessing/StackFrame;->location:Lcom/google/common/base/Optional;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    invoke-direct {v7, v13, v12, v5, v14}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;-><init>(Ljava/io/File;Lcom/android/camera/burst/xmp/MetadataAdder;Lcom/google/common/base/Optional;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V

    move/from16 v5, p3

    .line 2225
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;->encodeAndProcessImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Landroid/graphics/Rect;ILcom/android/camera/session/SessionBase;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 2235
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 195
    invoke-virtual {v3}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v4, v5, v3}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;->create(Lcom/google/android/libraries/smartburst/concurrency/Result;JLjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    if-eqz v11, :cond_0

    invoke-interface {v11}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catchall_0
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_1
    if-eqz v11, :cond_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v11}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    throw v2

    :catch_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v11}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    goto :goto_2

    .line 198
    :cond_3
    return-object v9

    .line 196
    :catchall_1
    move-exception v2

    move-object v3, v8

    goto :goto_1
.end method

.method private static splitSummary(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;)",
            "Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;"
        }
    .end annotation

    .prologue
    .line 172
    .line 2051
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v4

    .line 172
    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 174
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 175
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2150
    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleAt(J)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/Image;

    .line 176
    check-cast v0, Lcom/android/camera/burst/HiResImage;

    invoke-virtual {v0}, Lcom/android/camera/burst/HiResImage;->isOnDisk()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    if-eqz v4, :cond_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    throw v0

    :cond_1
    move-object v0, v3

    .line 176
    goto :goto_1

    .line 178
    :cond_2
    :try_start_3
    new-instance v0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->select(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/media/Summary;->select(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 178
    :cond_3
    return-object v0

    .line 179
    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final saveImages(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/util/AspectRatio;I)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;",
            "Lcom/android/camera/util/AspectRatio;",
            "I)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static/range {p1 .. p1}, Lcom/android/camera/burst/postprocessing/ImageProcessor;->splitSummary(Lcom/google/android/libraries/smartburst/media/Summary;)Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;

    move-result-object v4

    .line 1051
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;

    move-result-object v6

    .line 146
    const/4 v5, 0x0

    .line 148
    :try_start_0
    invoke-interface {v6}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;

    iget-object v4, v4, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->inMemSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/camera/burst/postprocessing/ImageProcessor;->saveOpenImages(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/util/AspectRatio;I)Ljava/util/List;

    move-result-object v7

    .line 149
    invoke-interface {v6}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;

    iget-object v8, v4, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->onDiskSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1202
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1204
    invoke-virtual {v8, v12, v13}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleAt(J)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v4

    .line 1205
    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/burst/HiResImage;

    invoke-virtual {v4}, Lcom/android/camera/burst/HiResImage;->getOnDiskImage$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2UGJLE9PN8H39EDLKIRB1CTIJM___()Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;

    move-result-object v4

    .line 1206
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/camera/burst/postprocessing/ImageProcessor;->getStackFrameForTimestamp(J)Lcom/android/camera/burst/postprocessing/StackFrame;

    move-result-object v11

    .line 1207
    new-instance v14, Lcom/android/camera/burst/xmp/MetadataAdder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->burstUuid:Ljava/util/UUID;

    iget-boolean v0, v11, Lcom/android/camera/burst/postprocessing/StackFrame;->isPrimary:Z

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/camera/burst/xmp/MetadataAdder;-><init>(Ljava/util/UUID;Z)V

    .line 1208
    iget-object v4, v4, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;->imagePath:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1209
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v16, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;

    iget-object v11, v11, Lcom/android/camera/burst/postprocessing/StackFrame;->sessionDirFrameFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v14, v1}, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;-><init>(Ljava/io/File;Lcom/android/camera/burst/xmp/MetadataAdder;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V

    .line 1210
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    .line 1214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v4, v12, v13, v11}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SavedImage;->create(Lcom/google/android/libraries/smartburst/concurrency/Result;JLjava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :catchall_0
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_1
    if-eqz v6, :cond_0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v6}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    throw v4

    .line 150
    :cond_1
    :try_start_3
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-static {v7}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/burst/postprocessing/ImageProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/camera/burst/postprocessing/ImageProcessor$1;

    invoke-direct {v8}, Lcom/android/camera/burst/postprocessing/ImageProcessor$1;-><init>()V

    .line 152
    invoke-virtual {v4, v7, v8}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 168
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    .line 151
    :cond_2
    return-object v4

    .line 168
    :catch_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method
