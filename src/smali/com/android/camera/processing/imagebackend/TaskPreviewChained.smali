.class public final Lcom/android/camera/processing/imagebackend/TaskPreviewChained;
.super Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.source "TaskPreviewChained.java"


# instance fields
.field private final chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/base/Optional;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/SessionBase;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    sget v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    sget v7, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMGRFDPR6ASJK95MM2PR5AHNL4HQ2A1P6ATJ9CLRI8L38ELMM4RJ1D5M56Q31E1IJM___:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;Lcom/android/camera/util/Size;I)V

    .line 54
    invoke-virtual {p7}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p7}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 56
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 61
    :goto_2
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    goto :goto_2
.end method


# virtual methods
.method public final logWrapper(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final run()V
    .locals 9

    .prologue
    .line 69
    iget-object v7, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 70
    iget-object v0, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    invoke-static {v7, v0}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->calculateInputImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v4

    .line 73
    new-instance v1, Lcom/android/camera/util/Size;

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->targetSize:Lcom/android/camera/util/Size;

    .line 73
    invoke-static {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v8

    .line 75
    invoke-virtual {p0, v7, v8}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->calculateResultImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v5

    .line 79
    :try_start_0
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->id:J

    sget v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->onStart$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNL8OBJDD4MQOB7CL1MURJKC5KMSPBI4HA62SRB95N6CRP48HIN6T39DPGN8QBFDOTIILG_(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 81
    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 83
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    div-int/2addr v1, v8

    iget-object v2, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 85
    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    div-int/2addr v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x66

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "TIMER_END Rendering preview YUV buffer available, w="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of subsample "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-virtual {p0, v1, v0, v8}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->runSelectedConversion(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v0

    .line 90
    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    invoke-virtual {p0, v5, v4, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->onPreviewDone$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1FAHGN6QQ9DLGMEPA3DTN78OB9DPIN492KC5PMMIBDC5JMAEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MQOB7CKTLMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRGE9NM6PBJEDKMSPPFD5MM2PR5C9GM6QR5DPI2UL31EDLKIRB1CTIK6RREEHGMIRJ5E8I58OBJDD4MSPJF4H26ASRKD5N62T39DTN3MAAM(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[II)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->chainedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    invoke-interface {v0, p0, v1}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->appendTasks(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v1, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, v7, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChained;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/Executor;)V

    throw v0
.end method
