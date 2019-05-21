.class public final Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskCompressMarkedImageToJpeg.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "TaskCompMImg2Jpg"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;)V
    .locals 6

    .prologue
    .line 41
    sget v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static markImage([BII)V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 57
    mul-int v3, p1, p2

    move v2, v1

    .line 60
    :goto_0
    if-ge v2, v7, :cond_1

    move v0, v1

    .line 61
    :goto_1
    div-int/lit8 v4, p2, 0x2

    if-ge v0, v4, :cond_0

    .line 62
    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v3

    mul-int v5, v0, p1

    add-int/2addr v4, v5

    .line 63
    aput-byte v6, p0, v4

    .line 64
    add-int/lit8 v4, v4, 0x1

    aput-byte v6, p0, v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v0, p1, -0x28

    div-int/lit8 v0, v0, 0x2

    :goto_2
    div-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 69
    :goto_3
    div-int/lit8 v4, p2, 0x2

    if-ge v2, v4, :cond_2

    .line 70
    shl-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v3

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    .line 71
    aput-byte v6, p0, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    aput-byte v6, p0, v4

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 77
    :goto_4
    div-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_6

    move v2, v1

    .line 78
    :goto_5
    if-ge v2, v7, :cond_4

    .line 79
    shl-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v3

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    .line 80
    aput-byte v6, p0, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    aput-byte v6, p0, v4

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 77
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    :cond_5
    add-int/lit8 v1, v1, 0x1

    :cond_6
    div-int/lit8 v0, p1, 0x2

    if-ge v1, v0, :cond_7

    .line 86
    add-int/lit8 v0, p2, -0x28

    div-int/lit8 v0, v0, 0x2

    :goto_6
    div-int/lit8 v2, p2, 0x2

    if-ge v0, v2, :cond_5

    .line 87
    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v3

    mul-int v4, v0, p1

    add-int/2addr v2, v4

    .line 88
    aput-byte v6, p0, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    aput-byte v6, p0, v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 92
    :cond_7
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->session:Lcom/android/camera/session/SessionBase;

    invoke-interface {v1}, Lcom/android/camera/session/SessionBase;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->markProcessingTimeStart()V

    .line 99
    iget-object v1, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported input image format for TaskCompressMarkedImageToJpeg"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    iget-object v1, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 107
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, v2, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v3, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 110
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v3

    iget-object v4, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 111
    invoke-interface {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v4

    iget-object v5, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 112
    invoke-interface {v5}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/google/android/apps/camera/util/layout/Orientation;IIILandroid/graphics/Rect;)V

    .line 114
    new-instance v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v8, v2, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v2, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 117
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v9

    iget-object v2, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 118
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v10

    const/16 v11, 0x100

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/google/android/apps/camera/util/layout/Orientation;IIILandroid/graphics/Rect;)V

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->id:J

    sget v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    move-object/from16 v3, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->onStart$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNL8OBJDD4MQOB7CL1MURJKC5KMSPBI4HA62SRB95N6CRP48HIN6T39DPGN8QBFDOTIILG_(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 128
    iget-object v3, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 1114
    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v4

    .line 1116
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1117
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1118
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1119
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 1121
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->convertYUV420ImageToPackedNV21(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;[BZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v3, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    .line 138
    const/4 v2, 0x3

    new-array v13, v2, [I

    .line 139
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    aput v3, v13, v2

    .line 140
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    aput v3, v13, v2

    .line 141
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    aput v3, v13, v2

    .line 144
    iget-object v2, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v3

    invoke-static {v11, v2, v3}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->markImage([BII)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v15, v2, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 148
    new-instance v8, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    sget v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    move-object/from16 v9, p0

    move-object v12, v1

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v8}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->appendTasks(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z

    .line 217
    return-void

    .line 133
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v3, v14, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    throw v1
.end method
