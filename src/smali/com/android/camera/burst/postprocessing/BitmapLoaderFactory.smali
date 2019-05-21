.class public Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;
.super Ljava/lang/Object;
.source "BitmapLoaderFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 4354
    invoke-direct {p0}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;-><init>()V

    return-void
.end method

.method public static createPostProcessingTask$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ2ELP76T2DDTI6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FDLIM8QB15T9NARBDC5P7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FDLIM8QB15T9NARBDC5P7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FC9QMCPJ5E9PIUHJ5C5Q7ASJ5AHGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUKRLDLMM2SJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMQPB4D5GIUGJ9EHMM2S21DHM6UOR1EHNN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJEHGN8SPFADMM2SJK89QN4SRK9LIN8OA4C5Q62EQCD9GNCO9FELQ6IR1FALAKIH1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UOJLE9PN8BQ2ELP76T29DLGMEPAGE9NM6PBJEDNN4EQCCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDP6M2RJ1CTIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F89QN4SRKA9IN6TBCEHPKOQBJEHIMSPBI7D4LKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRDC5P78OJLE9PN8BRKE9GMIRJ9DPJIUJ3FCT1MUR3CCLHN8QBFDPBN4QBKCLP3MJ3AC5R62BRLEHKMOBR3DTN66TBIE9IMST1F8LS6AORLEHNN4KR5E9R6IOR57DD4OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6T3FE9GMEP9FADQ6USJ1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP35C9QMEBRKE9GM6P9FAHP62OR57CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2US3FEDQ70SJFCDIN6SR9DPJIUK3FEDQ50SJFCDIN6SR9DPJL8OBJDCTG____(Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/media/Summary;Landroid/content/Context;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/UUID;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/burst/BurstResultsListener;IZLcom/google/android/libraries/smartburst/training/LogCollectionWriter;Ljava/util/concurrent/ExecutorService;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/burst/postprocessing/PostProcessingTask;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;",
            "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Lcom/android/camera/stats/SmartBurstMetaData;",
            "Ljava/util/UUID;",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/android/camera/session/StackableSession;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/burst/BurstResultsListener;",
            "IZ",
            "Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;",
            "Ljava/util/concurrent/ExecutorService;",
            "Z",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")",
            "Lcom/android/camera/burst/postprocessing/PostProcessingTask;"
        }
    .end annotation

    .prologue
    .line 7095
    const-string v2, "PostProcessingTaskFactory#createPostProcessingTask"

    move-object/from16 v0, p20

    invoke-interface {v0, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 8051
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v34

    .line 7096
    const/16 v33, 0x0

    .line 9051
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v35

    .line 7096
    const/16 v32, 0x0

    .line 10051
    :try_start_2
    invoke-static/range {p4 .. p4}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v36

    .line 7096
    const/16 v31, 0x0

    .line 7099
    :try_start_3
    new-instance v2, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;-><init>()V

    .line 7104
    invoke-static/range {p0 .. p0}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->getArtifactTypesForMode(Lcom/google/android/libraries/smartburst/integration/BurstMode;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move-object/from16 v6, p17

    move-object/from16 v7, p6

    .line 7100
    invoke-static/range {v2 .. v7}, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;->configureFactoryForPostProcessing(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    .line 7107
    invoke-static/range {p10 .. p10}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 7109
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/google/android/libraries/smartburst/integration/SmartBurstComponents;->configureFactoryWithAnalysisResults(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/media/Summary;)V

    .line 7111
    if-eqz p15, :cond_0

    .line 7112
    move-object/from16 v0, p16

    invoke-static {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectPostProcessLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    .line 7114
    :cond_0
    sget-object v3, Lcom/google/android/libraries/smartburst/integration/BurstMode;->FIXED_FPS:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    move-object/from16 v0, p0

    if-ne v0, v3, :cond_4

    .line 7115
    new-instance v2, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;

    .line 7116
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 7121
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 7122
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/smartburst/media/Summary;

    move/from16 v4, p14

    move-object/from16 v5, p13

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p17

    move-object/from16 v14, p9

    move-object/from16 v15, p8

    move-object/from16 v16, p19

    invoke-direct/range {v2 .. v16}, Lcom/android/camera/burst/postprocessing/ClassicBurstTask;-><init>(Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;Lcom/android/camera/storage/Storage;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 7162
    if-eqz v36, :cond_1

    :try_start_4
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    if-eqz v35, :cond_2

    :try_start_5
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_2
    if-eqz v34, :cond_3

    :try_start_6
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 7163
    :cond_3
    invoke-interface/range {p20 .. p20}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 7139
    :goto_0
    return-object v2

    .line 7132
    :cond_4
    :try_start_7
    const-class v3, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    .line 10085
    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 7133
    check-cast v12, Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    .line 7134
    const-class v3, Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

    .line 11085
    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 7135
    check-cast v14, Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;

    .line 7136
    const-class v3, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;

    .line 12085
    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 7137
    check-cast v13, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;

    .line 7139
    new-instance v11, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;

    .line 7145
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 7150
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 7151
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->detach()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/libraries/smartburst/media/Summary;

    move/from16 v16, p14

    move-object/from16 v17, p13

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v22, v10

    move-object/from16 v23, p6

    move-object/from16 v24, p7

    move-object/from16 v25, p17

    move-object/from16 v26, p9

    move-object/from16 v27, p8

    move/from16 v28, p18

    move-object/from16 v29, p19

    move-object/from16 v30, p20

    invoke-direct/range {v11 .. v30}, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;-><init>(Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;Lcom/google/android/libraries/smartburst/artifacts/SummaryStackGenerator;Lcom/google/android/libraries/smartburst/media/Summary;ILcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/io/File;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/android/camera/stats/SmartBurstMetaData;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Ljava/util/UUID;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 7162
    if-eqz v36, :cond_5

    :try_start_8
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_5
    if-eqz v35, :cond_6

    :try_start_9
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_6
    if-eqz v34, :cond_7

    :try_start_a
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 7163
    :cond_7
    invoke-interface/range {p20 .. p20}, Lcom/android/camera/debug/trace/Trace;->stop()V

    move-object v2, v11

    .line 7139
    goto :goto_0

    .line 7096
    :catch_0
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 7162
    :catchall_0
    move-exception v3

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_1
    if-eqz v36, :cond_8

    if-eqz v3, :cond_b

    :try_start_c
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_8
    :goto_2
    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 7096
    :catch_1
    move-exception v2

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 7162
    :catchall_1
    move-exception v3

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_3
    if-eqz v35, :cond_9

    if-eqz v3, :cond_c

    :try_start_f
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_9
    :goto_4
    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 7096
    :catch_2
    move-exception v2

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 7162
    :catchall_2
    move-exception v3

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    :goto_5
    if-eqz v34, :cond_a

    if-eqz v3, :cond_d

    :try_start_12
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_a
    :goto_6
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 7163
    :catchall_3
    move-exception v2

    invoke-interface/range {p20 .. p20}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v2

    .line 7162
    :catch_3
    move-exception v4

    :try_start_14
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_4
    move-exception v2

    move-object/from16 v3, v32

    goto :goto_3

    :cond_b
    invoke-interface/range {v36 .. v36}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_2

    :catch_4
    move-exception v4

    :try_start_15
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_5
    move-exception v2

    move-object/from16 v3, v33

    goto :goto_5

    :cond_c
    invoke-interface/range {v35 .. v35}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_4

    :catch_5
    move-exception v4

    :try_start_16
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-interface/range {v34 .. v34}, Lcom/google/android/libraries/smartburst/utils/handles/SafeHandle;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_6

    :catchall_6
    move-exception v2

    move-object/from16 v3, v31

    goto :goto_1
.end method

.method public static extractExif(Ljava/io/File;)Lcom/android/camera/exif/ExifInterface;
    .locals 4

    .prologue
    .line 5042
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5044
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 5045
    :try_start_1
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 5046
    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5048
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5047
    return-object v0

    .line 5044
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5048
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 5049
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5048
    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static getArtifactTypesForMode(Lcom/google/android/libraries/smartburst/integration/BurstMode;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12168
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/BurstMode;->doesSmartSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12169
    sget-object v0, Lcom/google/android/libraries/smartburst/artifacts/ArtifactType;->ALL_TYPES:[Ljava/lang/String;

    .line 12171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static populateAndGetLocation(Lcom/android/camera/exif/ExifInterface;)Landroid/location/Location;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5061
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5739
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/camera/util/Rational;

    move-result-object v2

    .line 5740
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 5741
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/android/camera/util/Rational;

    move-result-object v4

    .line 5742
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v5

    .line 5743
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    array-length v1, v2

    if-lt v1, v9, :cond_0

    array-length v1, v4

    if-ge v1, v9, :cond_3

    :cond_0
    move-object v1, v0

    .line 5064
    :goto_0
    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne v2, v8, :cond_2

    .line 5065
    new-instance v0, Landroid/location/Location;

    const-string v2, "exif-provider"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 5066
    aget-wide v2, v1, v6

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 5067
    aget-wide v2, v1, v7

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 5070
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 5071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 5073
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 5074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 5078
    :cond_2
    return-object v0

    .line 5751
    :cond_3
    new-array v1, v8, [D

    .line 5752
    invoke-static {v2, v3}, Lcom/android/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/camera/util/Rational;Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 5753
    invoke-static {v4, v5}, Lcom/android/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/android/camera/util/Rational;Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v1, v7

    goto :goto_0
.end method

.method public static populateAndGetLocation(Lcom/google/android/libraries/smartburst/artifacts/Artifact;Ljava/io/File;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 6093
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6094
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6095
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    new-instance v0, Lcom/android/camera/burst/postprocessing/BurstExif$1;

    invoke-direct {v0, p1}, Lcom/android/camera/burst/postprocessing/BurstExif$1;-><init>(Ljava/io/File;)V

    invoke-static {p2, v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fromFile(Ljava/io/File;)Lcom/google/android/libraries/smartburst/media/BitmapLoader;
    .locals 1

    .prologue
    .line 2357
    new-instance v0, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/media/JpegBitmapLoader;-><init>(Ljava/io/File;)V

    return-object v0
.end method
