.class public abstract Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;
    }
.end annotation


# instance fields
.field protected final executor:Ljava/util/concurrent/Executor;

.field protected final id:J

.field protected final image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

.field protected final imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

.field protected final processingPriority$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

.field protected final session:Lcom/android/camera/session/SessionBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "TaskImgContain"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;I)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-wide v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->id:J

    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->id:J

    .line 158
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->executor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->executor:Ljava/util/concurrent/Executor;

    .line 159
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    .line 160
    iput p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->processingPriority$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    .line 161
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->session:Lcom/android/camera/session/SessionBase;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->session:Lcom/android/camera/session/SessionBase;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;ILcom/android/camera/session/SessionBase;)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 182
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->image:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->id:J

    .line 183
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->executor:Ljava/util/concurrent/Executor;

    .line 184
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    .line 185
    iput p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->processingPriority$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28K3IDTHMASRJD5N6EK3ID5NN4QBKF4TG____:I

    .line 186
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->session:Lcom/android/camera/session/SessionBase;

    .line 187
    return-void
.end method

.method public static guaranteedSafeCrop(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 241
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_2

    .line 243
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_2

    .line 244
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_3

    .line 245
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 248
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 249
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 250
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 251
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_0

    .line 254
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method protected static rotateBoundingBox(Landroid/graphics/Rect;Lcom/google/android/apps/camera/util/layout/Orientation;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 194
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p1, v0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 198
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final guaranteedSafeCrop(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 219
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->guaranteedSafeCrop(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final onStart$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNL8OBJDD4MQOB7CL1MURJKC5KMSPBI4HA62SRB95N6CRP48HIN6T39DPGN8QBFDOTIILG_(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V
    .locals 7

    .prologue
    .line 286
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 288
    invoke-interface {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 289
    return-void
.end method
