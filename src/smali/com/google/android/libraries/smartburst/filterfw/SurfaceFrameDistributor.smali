.class public Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;
.super Ljava/lang/Object;
.source "SurfaceFrameDistributor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;,
        Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;
    }
.end annotation


# static fields
.field private static final mCurrentOwner:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSurfaceTextureAccessLock:Ljava/lang/Object;


# instance fields
.field private final mFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mFramePending:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSetup:Z

.field private final mListener:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;

.field private mServerTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

.field private final mSurfaceTransform:[F

.field private mTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureAccessLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mCurrentOwner:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$1;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$1;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;Landroid/os/Handler;)V

    .line 131
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    invoke-static {p2, v0, p3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTransform:[F

    .line 56
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mFramePending:Z

    .line 58
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    .line 252
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 99
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mListener:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;

    .line 100
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->onUpdateSurfaceTexture()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mFramePending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->onSetup()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->onRelease()V

    return-void
.end method

.method private informListenersOfNewFrame(J)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mListener:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$Listener;->onFrameAvailable(J)V

    .line 347
    return-void
.end method

.method private onRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    if-eqz v0, :cond_1

    .line 313
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mCurrentOwner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 318
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mServerTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->release()V

    .line 321
    iput-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mServerTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 323
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mTexture:I

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->deleteTexture(I)V

    .line 326
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focusNone()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    .line 330
    :cond_1
    return-void

    .line 318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 272
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mCurrentOwner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 274
    invoke-static {v3, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->newTarget(II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mServerTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 275
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mServerTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 276
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureManager:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;->createSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 277
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 278
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mTexture:I

    .line 279
    iput-boolean v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    .line 280
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mFramePending:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->onUpdateSurfaceTexture()V

    .line 284
    :cond_0
    return-void
.end method

.method private onUpdateSurfaceTexture()V
    .locals 3

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mIsSetup:Z

    if-eqz v0, :cond_1

    .line 334
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mCurrentOwner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mTexture:I

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 338
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 340
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->informListenersOfNewFrame(J)V

    .line 343
    :cond_1
    return-void

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to execute command on torn down thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 290
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 293
    const-class v0, Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    const-string v2, "setOnFrameAvailableListener"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 299
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 303
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 306
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static swap([I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    aget v0, p0, v2

    .line 248
    aget v1, p0, v3

    aput v1, p0, v2

    .line 249
    aput v0, p0, v3

    .line 250
    return-void
.end method


# virtual methods
.method public grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IILcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 212
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->newExternalTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getExternalIdentityShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v1

    .line 214
    if-nez v1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to grab frame from unknown thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTextureAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTextureId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 221
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTransform:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 223
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p4, v3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->applyOn(Landroid/graphics/SurfaceTexture;)Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->matrix()[F

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceTransform([F)V

    .line 226
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    .line 227
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTexTransform;->requiresSwappingDimensions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->swap([I)V

    .line 230
    :cond_1
    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {p5, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;->scale(II)[I

    move-result-object v3

    .line 231
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->resize([I)V

    .line 234
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    .line 233
    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 237
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 238
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 239
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 240
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->release()V

    .line 242
    return v7

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$4;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$4;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->post(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$3;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->post(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public waitForCommand()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 185
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$5;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$5;-><init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 193
    :cond_0
    return-void
.end method
