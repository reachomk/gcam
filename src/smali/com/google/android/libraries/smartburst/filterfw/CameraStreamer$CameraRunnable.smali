.class final Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;
.super Ljava/lang/Object;
.source "CameraStreamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;
    }
.end annotation


# static fields
.field private static final MAX_EVENTS:I = 0x20


# instance fields
.field private mActualDims:[I

.field private mActualFacing:I

.field private mActualFramesPerSec:I

.field private mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

.field mCamId:I

.field private final mCamListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCamOrientation:I

.field private mCamRotation:I

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraReady:Ljava/util/concurrent/locks/Condition;

.field private mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private mDisplay:Landroid/view/Display;

.field private mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

.field private mFlashMode:Ljava/lang/String;

.field private mFlipFront:Z

.field private mOrientation:I

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

.field private mRequestedFacing:I

.field private mRequestedFramesPerSec:I

.field private mRequestedPictureHeight:I

.field private mRequestedPictureWidth:I

.field private mRequestedPreviewHeight:I

.field private mRequestedPreviewWidth:I

.field private final mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 7

    .prologue
    const/16 v6, 0x280

    const/16 v5, 0x1e0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 902
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-direct {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    .line 790
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 793
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFramesPerSec:I

    .line 796
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFramesPerSec:I

    .line 799
    iput v6, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewWidth:I

    .line 800
    iput v5, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewHeight:I

    .line 803
    iput v6, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureWidth:I

    .line 804
    iput v5, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureHeight:I

    .line 807
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    .line 810
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    .line 813
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I

    .line 816
    iput-boolean v4, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlipFront:Z

    .line 819
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mDisplay:Landroid/view/Display;

    .line 822
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamOrientation:I

    .line 823
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mOrientation:I

    .line 826
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamRotation:I

    .line 829
    const-string v0, "off"

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlashMode:Ljava/lang/String;

    .line 832
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    .line 834
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    .line 837
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamId:I

    .line 840
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    .line 843
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    .line 845
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 847
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReady:Ljava/util/concurrent/locks/Condition;

    .line 849
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-direct {v0, p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    .line 903
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 904
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->createCamFrameHandler()V

    .line 905
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->initWithRunner(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)V

    .line 906
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->launchThread()V

    .line 907
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;I)V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateDisplayRotation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlipFront:Z

    return v0
.end method

.method private final closeCamera()V
    .locals 4

    .prologue
    .line 1531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1532
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->lock(Ljava/lang/Object;)Z

    .line 1533
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 1535
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 1536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    .line 1538
    :cond_0
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1539
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->release()V

    .line 1540
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->unlock(Ljava/lang/Object;)V

    .line 1542
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1543
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;

    .line 1544
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-interface {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;->onCameraClosed(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V

    goto :goto_0

    .line 1546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private final createCamFrameHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->assertOpenGLSupported()V

    .line 1236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1237
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerJB;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerJB;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    .line 1243
    :goto_0
    return-void

    .line 1238
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 1239
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    goto :goto_0

    .line 1241
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerGB;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerGB;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    goto :goto_0
.end method

.method private final findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1388
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 1389
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1390
    mul-int/lit16 v4, p1, 0x3e8

    .line 1391
    const v1, 0xf4240

    .line 1392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1393
    aget v3, v0, v7

    .line 1394
    aget v6, v0, v8

    .line 1395
    if-gt v3, v4, :cond_1

    if-lt v6, v4, :cond_1

    .line 1396
    sub-int v3, v4, v3

    sub-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 1397
    if-ge v3, v1, :cond_1

    move-object v1, v0

    move v0, v3

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 1402
    goto :goto_0

    .line 1403
    :cond_0
    aget v0, v2, v8

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFramesPerSec:I

    .line 1404
    return-object v2

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private final findClosestPictureSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 1

    .prologue
    .line 1351
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 1352
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->findClosestSizeFromList(IILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private final findClosestPreviewSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 1

    .prologue
    .line 1346
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 1347
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->findClosestSizeFromList(IILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private final findClosestSizeFromList(IILjava/util/List;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    .line 1356
    .line 1358
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1359
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1360
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    move v3, v4

    move v5, v4

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1365
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v7, p1, :cond_0

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    if-gt v7, p2, :cond_0

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v5, :cond_0

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v3, :cond_0

    .line 1369
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1370
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1372
    :cond_0
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v7, v2, :cond_3

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v7, v1, :cond_3

    .line 1374
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1375
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    move v0, v1

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 1377
    goto :goto_0

    .line 1378
    :cond_1
    if-ne v5, v4, :cond_2

    .line 1383
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v8

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1384
    return-object v0

    :cond_2
    move v1, v3

    move v2, v5

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private final getCameraId()I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1298
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    .line 1299
    if-nez v5, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Device does not have any cameras!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    if-nez v0, :cond_1

    .line 1312
    :goto_0
    return v2

    .line 1307
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 1308
    :goto_1
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v3, v2

    .line 1309
    :goto_2
    if-ge v3, v5, :cond_5

    .line 1310
    invoke-static {v3, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1311
    iget v4, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_3

    move v4, v1

    :goto_3
    if-ne v4, v0, :cond_4

    move v2, v3

    .line 1312
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1307
    goto :goto_1

    :cond_3
    move v4, v2

    .line 1311
    goto :goto_3

    .line 1309
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1315
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find a camera facing ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1272
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-nez v0, :cond_0

    .line 1273
    invoke-static {v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->newTarget(II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    return-object v0
.end method

.method private final initCameraParameters()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1320
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1323
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewHeight:I

    .line 1324
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->findClosestPreviewSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    .line 1325
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    aget v3, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->setCameraSize(II)V

    .line 1326
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1328
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureHeight:I

    .line 1329
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->findClosestPictureSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 1330
    aget v2, v1, v4

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1333
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFramesPerSec:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 1334
    aget v2, v1, v4

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1338
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1343
    return-void
.end method

.method private final nextEvent()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;
    .locals 2

    .prologue
    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :goto_0
    return-object v0

    .line 1155
    :catch_0
    move-exception v0

    const-string v0, "GraphRunner"

    const-string v1, "Event queue processing was interrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final onFrame()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateRotation()V

    .line 1215
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->updateServerFrame()V

    .line 1217
    :cond_0
    return-void
.end method

.method private final onHalt()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1191
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->closeCamera()V

    .line 1192
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focusNone()V

    .line 1193
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->set(I)V

    .line 1195
    :cond_0
    return-void
.end method

.method private final onParamsUpdated()V
    .locals 2

    .prologue
    .line 1147
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1148
    return-void
.end method

.method private final onRestart()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->set(I)V

    .line 1201
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 1202
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->openCamera()V

    .line 1204
    :cond_0
    return-void
.end method

.method private final onStart()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->set(I)V

    .line 1163
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 1164
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->openCamera()V

    .line 1165
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mClients:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 1166
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoStreamStarted()V

    goto :goto_0

    .line 1169
    :cond_0
    return-void
.end method

.method private final onStop()V
    .locals 4

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->closeCamera()V

    .line 1174
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focusNone()V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->set(I)V

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    iget-object v1, v1, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mClients:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1183
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 1184
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoStreamStopped()V

    goto :goto_0

    .line 1186
    :cond_1
    return-void
.end method

.method private final onTearDown()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;

    .line 1223
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->removeListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1230
    :goto_1
    return-void

    .line 1227
    :cond_1
    const-string v0, "CameraStreamer"

    const-string v1, "Could not tear-down CameraStreamer as camera still seems to be running!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final onUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1207
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1208
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1209
    invoke-virtual {p0, v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1211
    :cond_0
    return-void
.end method

.method private final onUpdateOrientation(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1409
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I

    if-ne v0, v2, :cond_3

    .line 1410
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamOrientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    .line 1412
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamRotation:I

    if-eq v0, v1, :cond_0

    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamRotation:I

    .line 1415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->isFrontMirrored()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1424
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 1425
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mOrientation:I

    .line 1426
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->onUpdateCameraOrientation(I)V

    .line 1428
    :cond_2
    return-void

    .line 1411
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamOrientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 1415
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final openCamera()V
    .locals 5

    .prologue
    .line 1433
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out while waiting to acquire camera!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while waiting to acquire camera!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1443
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->lock(Ljava/lang/Object;)Z

    .line 1446
    monitor-enter p0

    .line 1447
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateCamera()V

    .line 1448
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateRotation()V

    .line 1449
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->setupServerFrame()V

    .line 1450
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1452
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 1455
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    monitor-enter v2

    .line 1456
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;

    .line 1457
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-interface {v0, v4}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;->onCameraOpened(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V

    goto :goto_0

    .line 1459
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1450
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1459
    :cond_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1460
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->unlock(Ljava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1463
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1464
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1465
    return-void
.end method

.method private final updateCamera()V
    .locals 2

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    monitor-enter v1

    .line 1280
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamId:I

    .line 1281
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamId:I

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateCameraOrientation(I)V

    .line 1282
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    .line 1283
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->initCameraParameters()V

    .line 1284
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final updateCameraOrientation(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1288
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1289
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1290
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamOrientation:I

    .line 1291
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mOrientation:I

    .line 1292
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    .line 1294
    :goto_0
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I

    .line 1295
    return-void

    .line 1294
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private final declared-synchronized updateDisplayRotation(I)V
    .locals 2

    .prologue
    .line 1252
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 1266
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported display rotation constant! Use one of the Surface.ROTATION_ constants!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1254
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onUpdateOrientation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    :goto_0
    monitor-exit p0

    return-void

    .line 1257
    :pswitch_1
    const/16 v0, 0x5a

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onUpdateOrientation(I)V

    goto :goto_0

    .line 1260
    :pswitch_2
    const/16 v0, 0xb4

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onUpdateOrientation(I)V

    goto :goto_0

    .line 1263
    :pswitch_3
    const/16 v0, 0x10e

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onUpdateOrientation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateRotation()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->updateDisplayRotation(I)V

    .line 1249
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V
    .locals 2

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1021
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized bindToDisplay(Landroid/view/Display;)V
    .locals 1

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mDisplay:Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    monitor-exit p0

    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized canStart()Z
    .locals 1

    .prologue
    .line 1119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraId()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    .line 1121
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final createRecorder(Ljava/lang/String;Landroid/media/CamcorderProfile;)V
    .locals 2

    .prologue
    .line 1479
    invoke-virtual {p0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;

    .line 1480
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1481
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1484
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    .line 1485
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1486
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1487
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1488
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1489
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getCamFrameHandler()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    return-object v0
.end method

.method public final getCamera()Landroid/hardware/Camera;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 978
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    monitor-enter v1

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    monitor-exit v1

    return-object v0

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getCameraFacing()I
    .locals 1

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFacing:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCameraFrameRate()I
    .locals 1

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualFramesPerSec:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCameraHeight()I
    .locals 2

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCameraRotation()I
    .locals 1

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCameraWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mActualDims:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    return-object v0
.end method

.method public final getCurrentCameraId()I
    .locals 2

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    monitor-enter v1

    .line 1010
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamId:I

    monitor-exit v1

    return v0

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1128
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    monitor-enter v2

    .line 1129
    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1130
    monitor-exit v2

    .line 1138
    :goto_0
    return v0

    .line 1134
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 1135
    monitor-exit v2

    goto :goto_0

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1137
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamFrameHandler:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)V

    .line 1138
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mState:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;->current()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final launchThread()V
    .locals 1

    .prologue
    .line 972
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 973
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 974
    return-void
.end method

.method public final lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->lock(Ljava/lang/Object;)Z

    .line 990
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->unlock(Ljava/lang/Object;)V

    .line 992
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCameraReadyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 999
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->lock(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Condition interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final loop()V
    .locals 1

    .prologue
    .line 917
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->nextEvent()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_0

    .line 919
    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;->code:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 921
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 924
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onStop()V

    goto :goto_0

    .line 927
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onFrame()V

    goto :goto_0

    .line 930
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onHalt()V

    goto :goto_0

    .line 933
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onRestart()V

    goto :goto_0

    .line 936
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onUpdate()V

    goto :goto_0

    .line 939
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onTearDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final pushEvent(IZ)V
    .locals 3

    .prologue
    .line 959
    if-eqz p2, :cond_0

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 969
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mEventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    const-string v0, "CameraStreamer"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Dropping event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final releaseRecorder()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recorder created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    .line 1526
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1527
    invoke-virtual {p0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->unlockCamera(Ljava/lang/Object;)V

    .line 1528
    return-void
.end method

.method public final removeListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V
    .locals 2

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mCamListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1027
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->loop()V

    .line 951
    return-void
.end method

.method public final declared-synchronized setDesiredFrameRate(I)V
    .locals 1

    .prologue
    .line 1051
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFramesPerSec:I

    if-eq p1, v0, :cond_0

    .line 1052
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFramesPerSec:I

    .line 1053
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onParamsUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_0
    monitor-exit p0

    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDesiredPictureSize(II)V
    .locals 1

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureHeight:I

    if-eq p2, v0, :cond_1

    .line 1044
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureWidth:I

    .line 1045
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPictureHeight:I

    .line 1046
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onParamsUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    :cond_1
    monitor-exit p0

    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDesiredPreviewSize(II)V
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewHeight:I

    if-eq p2, v0, :cond_1

    .line 1036
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewWidth:I

    .line 1037
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedPreviewHeight:I

    .line 1038
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onParamsUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :cond_1
    monitor-exit p0

    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setFacing(I)V
    .locals 3

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    if-eq p1, v0, :cond_0

    .line 1059
    packed-switch p1, :pswitch_data_0

    .line 1066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown facing value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' passed to setFacing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1063
    :pswitch_0
    :try_start_1
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRequestedFacing:I

    .line 1069
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onParamsUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :cond_0
    monitor-exit p0

    return-void

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized setFlashMode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlashMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlashMode:Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->onParamsUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :cond_0
    monitor-exit p0

    return-void

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setFlipFrontCamera(Z)V
    .locals 1

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlipFront:Z

    if-eq v0, p1, :cond_0

    .line 1075
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mFlipFront:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :cond_0
    monitor-exit p0

    return-void

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final signalNewFrame()V
    .locals 2

    .prologue
    .line 954
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 955
    return-void
.end method

.method public final startRecording()V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recorder created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 1505
    return-void
.end method

.method public final stopRecording()V
    .locals 2

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recorder created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1515
    return-void
.end method

.method public final declared-synchronized supportsHardwareFaceDetection()Z
    .locals 1

    .prologue
    .line 1097
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public final unlockCamera(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->mExternalCameraLock:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable$ExternalCameraLock;->unlock(Ljava/lang/Object;)V

    .line 1006
    return-void
.end method
