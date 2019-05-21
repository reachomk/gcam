.class public Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;
.super Ljava/lang/Object;
.source "CameraStreamer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$Event;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$State;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerGB;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerJB;,
        Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;
    }
.end annotation


# static fields
.field public static final FACING_BACK:I = 0x2

.field public static final FACING_DONTCARE:I = 0x0

.field public static final FACING_FRONT:I = 0x1

.field public static final MAX_CAMERA_WAIT_TIME:J = 0x5L

.field static mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 2

    .prologue
    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1950
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    .line 1951
    return-void
.end method

.method public static getDefaultFacing()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1695
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 1696
    if-nez v2, :cond_0

    .line 1702
    :goto_0
    return v0

    .line 1699
    :cond_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1700
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1701
    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1702
    goto :goto_0

    .line 1703
    :cond_1
    const/4 v0, 0x2

    .line 1701
    goto :goto_0
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 1946
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method static requireDummySurfaceView()Z
    .locals 2

    .prologue
    .line 1964
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->addListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V

    .line 1791
    return-void
.end method

.method public addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCamFrameHandler()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->registerClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 1847
    return-void
.end method

.method public bindToDisplay(Landroid/view/Display;)V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->bindToDisplay(Landroid/view/Display;)V

    .line 1585
    return-void
.end method

.method public canStart()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->canStart()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->stop()V

    .line 1862
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->tearDown()V

    .line 1864
    :cond_0
    return-void
.end method

.method public createRecorder(Ljava/lang/String;Landroid/media/CamcorderProfile;)V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->createRecorder(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 1919
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getCameraFacing()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraFacing()I

    move-result v0

    return v0
.end method

.method public getCameraFrameRate()I
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraFrameRate()I

    move-result v0

    return v0
.end method

.method public getCameraHeight()I
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraHeight()I

    move-result v0

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public getCameraRotation()I
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method public getCameraWidth()I
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCameraWidth()I

    move-result v0

    return v0
.end method

.method public getDurationNs()J
    .locals 2

    .prologue
    .line 1766
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v0

    return v0
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1831
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1832
    if-eqz p2, :cond_0

    .line 1833
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoFrameInfo;-><init>(Z)V

    invoke-virtual {p2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 1835
    :cond_0
    const/4 v0, 0x1

    .line 1837
    :cond_1
    return v0
.end method

.method halt()V
    .locals 3

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1956
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public releaseRecorder()V
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->releaseRecorder()V

    .line 1923
    return-void
.end method

.method public removeListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->removeListener(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraListener;)V

    .line 1798
    return-void
.end method

.method public removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->getCamFrameHandler()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->unregisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 1856
    return-void
.end method

.method restart()V
    .locals 3

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1961
    return-void
.end method

.method public setDesiredFrameRate(I)V
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setDesiredFrameRate(I)V

    .line 1617
    return-void
.end method

.method public setDesiredPictureSize(II)V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setDesiredPictureSize(II)V

    .line 1607
    return-void
.end method

.method public setDesiredPreviewSize(II)V
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setDesiredPreviewSize(II)V

    .line 1596
    return-void
.end method

.method public setFacing(I)V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setFacing(I)V

    .line 1630
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setFlashMode(Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method public setFlipFrontCamera(Z)V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->setFlipFrontCamera(Z)V

    .line 1637
    return-void
.end method

.method public skipVideoFrame()V
    .locals 0

    .prologue
    .line 1818
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1750
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1751
    return-void
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->startRecording()V

    .line 1927
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1759
    return-void
.end method

.method public stopAndWait()V
    .locals 4

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1777
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    const-string v0, "CameraStreamer"

    const-string v1, "Time-out waiting for camera to close!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1784
    return-void

    .line 1781
    :catch_0
    move-exception v0

    const-string v0, "CameraStreamer"

    const-string v1, "Interrupted while waiting for camera to close!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->stopRecording()V

    .line 1931
    return-void
.end method

.method public supportsHardwareFaceDetection()Z
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->supportsHardwareFaceDetection()Z

    move-result v0

    return v0
.end method

.method tearDown()V
    .locals 3

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->pushEvent(IZ)V

    .line 1969
    return-void
.end method

.method public unlockCamera(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->unlockCamera(Ljava/lang/Object;)V

    .line 1904
    return-void
.end method

.method public updateDisplayRotation(I)V
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->mCameraRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-static {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->access$1100(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;I)V

    .line 1576
    return-void
.end method
