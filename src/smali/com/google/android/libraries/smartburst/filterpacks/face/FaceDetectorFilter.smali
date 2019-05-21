.class public Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FaceDetectorFilter.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# static fields
.field private static final INPUT_PORT_IMAGE:Ljava/lang/String; = "image"

.field private static final OUTPUT_PORT_FACES:Ljava/lang/String; = "faces"


# instance fields
.field private mFaces:[Landroid/hardware/Camera$Face;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 35
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 36
    const-class v1, Landroid/hardware/Camera$Face;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 38
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "faces"

    .line 39
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method protected onClose()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onClose()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->isOpenGLSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 65
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->unlockCamera(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->mFaces:[Landroid/hardware/Camera$Face;

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onOpen()V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->isOpenGLSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->lockCamera(Ljava/lang/Object;)Landroid/hardware/Camera;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 51
    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 52
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->unlockCamera(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getTimestamp()J

    move-result-wide v2

    .line 77
    const-string v0, "faces"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->mFaces:[Landroid/hardware/Camera$Face;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/Camera$Face;

    .line 85
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->mFaces:[Landroid/hardware/Camera$Face;

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v4, 0x1

    new-array v4, v4, [I

    array-length v5, v0

    aput v5, v4, v6

    .line 88
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValues()Lcom/google/android/libraries/smartburst/filterfw/FrameValues;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValues;->setValues(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v4, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameValues;->setTimestamp(J)V

    .line 91
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 92
    return-void

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceDetectorFilter;->mFaces:[Landroid/hardware/Camera$Face;

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
