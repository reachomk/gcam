.class public Lcom/google/android/libraries/smartburst/filterfw/MffContext;
.super Ljava/lang/Object;
.source "MffContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;,
        Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;
    }
.end annotation


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

.field private mCameraStreamingSupport:Z

.field private mDummySurfaceView:Landroid/view/SurfaceView;

.field private mGLSupport:Z

.field private final mGraphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPreserveFramesOnPause:Z

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private final mRunners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mApplicationContext:Landroid/content/Context;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mPreserveFramesOnPause:Z

    .line 153
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    .line 156
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    .line 159
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mDummySurfaceView:Landroid/view/SurfaceView;

    .line 162
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mHandler:Landroid/os/Handler;

    .line 186
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->DEFAULT:Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->init(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mApplicationContext:Landroid/content/Context;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mPreserveFramesOnPause:Z

    .line 153
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    .line 156
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    .line 159
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mDummySurfaceView:Landroid/view/SurfaceView;

    .line 162
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mHandler:Landroid/os/Handler;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->init(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V

    .line 207
    return-void
.end method

.method private createDummySurfaceView(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 510
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 514
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->findActivityForContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_0

    .line 516
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 517
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    :goto_0
    return-object v0

    .line 519
    :cond_0
    const-string v1, "MffContext"

    const-string v2, "Could not find activity for dummy surface! Consider specifying your own SurfaceView!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createHandler()V
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MffContext must be created in a thread with a Looper!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mHandler:Landroid/os/Handler;

    .line 443
    return-void
.end method

.method private determineCameraSupport(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V
    .locals 2

    .prologue
    .line 425
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->getNumberOfCameras()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamingSupport:Z

    .line 426
    iget-boolean v0, p1, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->requireCamera:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamingSupport:Z

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create context that requires a camera on this platform!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method

.method private determineGLSupport(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p2, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->forceNoGL:Z

    if-eqz v0, :cond_1

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGLSupport:Z

    .line 422
    :cond_0
    return-void

    .line 416
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getPlatformSupportsGLES2(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGLSupport:Z

    .line 417
    iget-boolean v0, p2, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->requireOpenGL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGLSupport:Z

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create context that requires GL support on this platform!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fetchDummySurfaceView(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p2, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->requireCamera:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->requireDummySurfaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p2, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->dummySurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p2, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;->dummySurface:Landroid/view/SurfaceView;

    .line 408
    :goto_0
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mDummySurfaceView:Landroid/view/SurfaceView;

    .line 410
    :cond_0
    return-void

    .line 408
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->createDummySurfaceView(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object v0

    goto :goto_0
.end method

.method private findActivityForContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 526
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static getPlatformSupportsGLES2(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 433
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 434
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 435
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->determineGLSupport(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V

    .line 398
    invoke-direct {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->determineCameraSupport(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->createHandler()V

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mApplicationContext:Landroid/content/Context;

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->fetchDummySurfaceView(Landroid/content/Context;Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;)V

    .line 402
    return-void
.end method

.method private maybeDestroyRenderScript()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 535
    :cond_0
    return-void
.end method

.method private resumeCamera()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->restart()V

    .line 477
    :cond_0
    return-void
.end method

.method private resumeRunners()V
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 467
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->restart()V

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static setEGLConfigChooser(IIIIII)V
    .locals 0

    .prologue
    .line 331
    invoke-static/range {p0 .. p5}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->setEGLConfigChooser(IIIIII)V

    .line 337
    return-void
.end method

.method private stopRunners(Z)V
    .locals 3

    .prologue
    .line 446
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 449
    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->halt()V

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->stop()V

    goto :goto_0

    .line 456
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mPreserveFramesOnPause:Z

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 458
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->flushFrames()V

    goto :goto_1

    .line 461
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private tearDown()V
    .locals 5

    .prologue
    .line 488
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 489
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    monitor-enter v2

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 491
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->isSubGraph()Z

    move-result v4

    if-nez v4, :cond_0

    .line 492
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 498
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->tearDown()V

    goto :goto_1

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 503
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->tearDown()V

    goto :goto_2

    .line 505
    :cond_3
    return-void
.end method

.method private waitUntilStopped()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 481
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->waitUntilStop()V

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method addGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V
    .locals 2

    .prologue
    .line 371
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addRunner(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRunners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final assertOpenGLSupported()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->isOpenGLSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to use OpenGL ES 2 in a context that does not support it!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCameraStreamer()Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    return-object v0
.end method

.method getDummySurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mDummySurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getPreserveFramesOnPause()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mPreserveFramesOnPause:Z

    return v0
.end method

.method public final getRenderScript()Landroid/renderscript/RenderScript;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mRenderScript:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method public final isCameraStreamingSupported()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamingSupport:Z

    return v0
.end method

.method public final isOpenGLSupported()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGLSupport:Z

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 217
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    if-ne v0, v2, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->halt()V

    .line 222
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->stopRunners(Z)V

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    .line 225
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->resumeRunners()V

    .line 237
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->resumeCamera()V

    .line 238
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    .line 240
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 248
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    if-eq v0, v2, :cond_2

    .line 250
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->stop()V

    .line 252
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mCameraStreamer:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;->tearDown()V

    .line 254
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->maybeDestroyRenderScript()V

    .line 257
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->stopRunners(Z)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->waitUntilStopped()V

    .line 259
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->tearDown()V

    .line 260
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mState:Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$State;->current:I

    .line 262
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 379
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreserveFramesOnPause(Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->mPreserveFramesOnPause:Z

    .line 276
    return-void
.end method
