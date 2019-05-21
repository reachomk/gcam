.class final Lcom/android/camera/burst/postprocessing/ClassicBurstTask;
.super Lcom/android/camera/burst/postprocessing/PostProcessingTask;
.source "ClassicBurstTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "CBurstTask"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;Lcom/android/camera/storage/Storage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;I",
            "Lcom/android/camera/burst/BurstResultsListener;",
            "Lcom/android/camera/session/StackableSession;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Ljava/io/File;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Lcom/android/camera/stats/SmartBurstMetaData;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            "Ljava/util/UUID;",
            "Lcom/android/camera/storage/Storage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p14}, Lcom/android/camera/burst/postprocessing/PostProcessingTask;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;Lcom/android/camera/storage/Storage;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final doPostProcessing(Landroid/content/Context;)V
    .locals 18

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1151
    invoke-static {v13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v2, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "rasterize frame previews: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1155
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1158
    invoke-virtual {v13}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v2}, Lcom/android/camera/session/StackableSession;->createStackedSession()Lcom/android/camera/session/StackedCaptureSession;

    move-result-object v7

    .line 1162
    invoke-virtual {v13, v4, v5}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 1164
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 1165
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->loadIntoDrawableResource(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v6

    .line 1163
    invoke-virtual {v2, v3, v6}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v8

    .line 1167
    new-instance v3, Lcom/android/camera/burst/postprocessing/StackFrame;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1175
    invoke-virtual {v7}, Lcom/android/camera/session/StackedCaptureSession;->getGpsLocation()Lcom/google/common/base/Optional;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->burstSessionDirectory:Ljava/io/File;

    .line 1176
    invoke-static {v4, v5}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getFrameFilename(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/burst/postprocessing/StackFrame;-><init>(JFLcom/android/camera/session/StackedCaptureSession;Lcom/google/android/libraries/smartburst/concurrency/Result;ZZLcom/google/common/base/Optional;Ljava/io/File;)V

    .line 1167
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/camera/burst/postprocessing/UpdateThumbnail;

    sget v4, Lcom/android/camera/session/StackedCaptureSession$StackItemType;->FRAME$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UKRKC5HMMPB48DGN0T3LE9IL6PBJEDKMURH4ADQ62ORB95Q6ARAKF5O6AEO_:I

    invoke-direct {v3, v7, v4}, Lcom/android/camera/burst/postprocessing/UpdateThumbnail;-><init>(Lcom/android/camera/session/StackedCaptureSession;I)V

    .line 1179
    invoke-virtual {v8, v2, v3}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 1183
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    :cond_0
    const/4 v2, 0x0

    .line 1188
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/postprocessing/StackFrame;

    iget-object v2, v2, Lcom/android/camera/burst/postprocessing/StackFrame;->thumbnail:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 1190
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-direct {v4, v5}, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;-><init>(Lcom/android/camera/session/StackableSession;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 1191
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 1194
    invoke-static {v15}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->burstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    invoke-virtual {v2}, Lcom/android/camera/burst/BurstResultsListener;->onBurstPreviewAvailable()V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/stats/SmartBurstMetaData;->setSummaryCounts(II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->saveCapturedImages(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 106
    new-instance v3, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 110
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/media/Summary;->getSortedTimestamps()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v5}, Lcom/android/camera/session/StackableSession;->getStartTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;-><init>(Ljava/util/List;J)V

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v3}, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->rasterizeFramesHighRes(Ljava/util/Map;Ljava/util/List;Lcom/android/camera/burst/postprocessing/CreationTimestampProvider;)V

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    .line 113
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 115
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->closeInput()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v4

    .line 112
    invoke-static {v3, v2, v4}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 119
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/AutoCloseable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->loResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->medResSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    aput-object v4, v2, v3

    .line 120
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;->postProcessingExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 122
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->closeInput()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v4

    .line 119
    invoke-static {v2, v3, v4}, Lcom/google/android/libraries/smartburst/concurrency/Results;->forEach(Ljava/lang/Iterable;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 124
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public final setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final suspend()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
