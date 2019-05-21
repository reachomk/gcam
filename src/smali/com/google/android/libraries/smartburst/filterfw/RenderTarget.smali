.class public final Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
.super Ljava/lang/Object;
.source "RenderTarget.java"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static mConfiguredDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static final mCurrentTarget:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDisplaySurfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Ljavax/microedition/khronos/egl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field private static mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private static final mExternalIdShaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Lcom/google/android/libraries/smartburst/filterfw/ImageShader;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIdShaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Lcom/google/android/libraries/smartburst/filterfw/ImageShader;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRefCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSharedResourceLock:Ljava/lang/Object;

.field private static mSupportsMultipleDisplaySurfaces:Z

.field private static final mSurfaceSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljavax/microedition/khronos/egl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlphaSize:I

.field private static sBlueSize:I

.field private static sDepthSize:I

.field private static sGreenSize:I

.field private static sRedSize:I

.field private static sStencilSize:I


# instance fields
.field private mContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mFbo:I

.field private mOwnsContext:Z

.field private mOwnsSurface:Z

.field private mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mSurfaceSource:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSupportsMultipleDisplaySurfaces:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mIdShaders:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mExternalIdShaders:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    .line 78
    sput v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sRedSize:I

    .line 79
    sput v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sGreenSize:I

    .line 80
    sput v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sBlueSize:I

    .line 81
    sput v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sAlphaSize:I

    .line 82
    sput v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sDepthSize:I

    .line 83
    sput v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sStencilSize:I

    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method private constructor <init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSource:Ljava/lang/Object;

    .line 403
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 404
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 405
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 406
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 407
    iput p4, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    .line 408
    iput-boolean p5, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mOwnsContext:Z

    .line 409
    iput-boolean p6, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mOwnsSurface:Z

    .line 410
    return-void
.end method

.method private final addReferenceTo(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 344
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_0
    monitor-exit v1

    return-void

    .line 349
    :cond_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static checkContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 4

    .prologue
    .line 463
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v0, :cond_1

    .line 464
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EGL Error: Bad context: "

    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method private static checkDisplay(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 4

    .prologue
    .line 457
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p1, v0, :cond_1

    .line 458
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EGL Error: Bad display: "

    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method private static checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 475
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 476
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/RuntimeException;

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_0
    return-void
.end method

.method private static checkSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 4

    .prologue
    .line 469
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v0, :cond_1

    .line 470
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EGL Error: Bad surface: "

    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    return-void
.end method

.method private static chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 373
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mConfiguredDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    :cond_0
    new-array v5, v4, [I

    .line 375
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 376
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getDesiredConfig()[I

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    .line 377
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "EGL Error: eglChooseConfig failed "

    .line 379
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    aget v0, v5, v6

    if-lez v0, :cond_3

    .line 381
    aget-object v0, v3, v6

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 382
    sput-object p1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mConfiguredDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 385
    :cond_3
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method private static createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 439
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 440
    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 441
    return-object v0

    .line 438
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static createDefaultDisplay(Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 432
    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkDisplay(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 433
    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->initEgl(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 434
    return-object v0
.end method

.method private static createSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    .prologue
    .line 445
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 446
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3057

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3056

    aput v3, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x3038

    aput v3, v1, v2

    .line 447
    invoke-interface {p0, p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public static currentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public static currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    return-object v0
.end method

.method public static focusNone()V
    .locals 5

    .prologue
    .line 238
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 239
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_0

    .line 240
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 244
    const-string v1, "eglMakeCurrent"

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    .line 246
    :cond_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public static forMediaRecorder(Landroid/media/MediaRecorder;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented MediaRecorder -> RenderTarget!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCurrentFbo()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 452
    const v1, 0x8ca6

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 453
    aget v0, v0, v2

    return v0
.end method

.method private static getDesiredConfig()[I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 389
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sRedSize:I

    aput v2, v0, v1

    const/16 v1, 0x3023

    aput v1, v0, v3

    const/4 v1, 0x5

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sGreenSize:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sBlueSize:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sAlphaSize:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sDepthSize:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sStencilSize:I

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    return-object v0
.end method

.method private static getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 484
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 485
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorStringICS(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "EGL Error 0x"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getEGLErrorStringICS(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 493
    invoke-static {p0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initEgl(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 4

    .prologue
    .line 424
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 425
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EGL Error: eglInitialize failed "

    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getEGLErrorString(Ljavax/microedition/khronos/egl/EGL10;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    return-void
.end method

.method public static newTarget(II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 86
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 87
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->createDefaultDisplay(Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 90
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->createSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 91
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    const/4 v4, 0x0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;-><init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V

    .line 92
    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->addReferenceTo(Ljava/lang/Object;)V

    .line 93
    return-object v0
.end method

.method private final removeReferenceTo(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 355
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    monitor-enter v2

    .line 356
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 359
    sget-object v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 362
    sget-object v3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mRefCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    .line 367
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 364
    goto :goto_0

    .line 366
    :cond_2
    const-string v0, "RenderTarget"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Removing reference of already released: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    monitor-exit v2

    move v0, v1

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEGLConfigChooser(IIIIII)V
    .locals 0

    .prologue
    .line 184
    sput p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sRedSize:I

    .line 185
    sput p1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sGreenSize:I

    .line 186
    sput p2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sBlueSize:I

    .line 187
    sput p3, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sAlphaSize:I

    .line 188
    sput p4, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sDepthSize:I

    .line 189
    sput p5, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->sStencilSize:I

    .line 190
    return-void
.end method

.method private final setSurfaceSource(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSource:Ljava/lang/Object;

    .line 341
    return-void
.end method

.method private final surface()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 3

    .prologue
    .line 413
    sget-boolean v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSupportsMultipleDisplaySurfaces:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 418
    :goto_0
    return-object v0

    .line 416
    :cond_0
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 418
    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 418
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final focus()V
    .locals 5

    .prologue
    .line 219
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 222
    if-eq v0, p0, :cond_3

    .line 224
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 229
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->getCurrentFbo()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    if-eq v0, v1, :cond_2

    .line 230
    const v0, 0x8d40

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 231
    const-string v0, "glBindFramebuffer"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 233
    :cond_2
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 235
    :cond_3
    return-void
.end method

.method public final forSurface(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    monitor-enter v2

    .line 164
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 165
    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v1, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 167
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const-string v1, "eglCreateWindowSurface"

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 172
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;-><init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V

    .line 173
    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->setSurfaceSource(Ljava/lang/Object;)V

    .line 174
    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->addReferenceTo(Ljava/lang/Object;)V

    .line 175
    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public final forSurfaceHolder(Landroid/view/SurfaceHolder;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 127
    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v1, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 129
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const-string v1, "eglCreateWindowSurface"

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 134
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;-><init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V

    .line 135
    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->addReferenceTo(Ljava/lang/Object;)V

    .line 136
    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->setSurfaceSource(Ljava/lang/Object;)V

    .line 137
    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public final forSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->chooseEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 144
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    monitor-enter v2

    .line 145
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 146
    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v1, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 148
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const-string v1, "eglCreateWindowSurface"

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->checkSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 153
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;-><init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V

    .line 154
    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->setSurfaceSource(Ljava/lang/Object;)V

    .line 155
    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->addReferenceTo(Ljava/lang/Object;)V

    .line 156
    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public final forTexture(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 7

    .prologue
    const v3, 0x8d40

    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->generateFbo()I

    move-result v4

    .line 106
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 107
    const-string v0, "glBindFramebuffer"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 108
    const v0, 0x8ce0

    .line 110
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTarget()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTextureId()I

    move-result v2

    .line 108
    invoke-static {v3, v0, v1, v2, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 113
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 114
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 115
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Framebuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is incomplete. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;-><init>(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLSurface;IZZ)V

    return-object v0
.end method

.method public final getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public final getExternalIdentityShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 4

    .prologue
    .line 324
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mExternalIdShaders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 326
    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createExternalIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    .line 328
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mExternalIdShaders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    monitor-exit v1

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getIdentityShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 4

    .prologue
    .line 308
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mIdShaders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 310
    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    .line 312
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mIdShaders:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    monitor-exit v1

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPixelData(II)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 297
    mul-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 298
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->readTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;Ljava/nio/ByteBuffer;II)V

    .line 299
    return-object v0
.end method

.method public final readPixelData(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .prologue
    .line 293
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->readTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;Ljava/nio/ByteBuffer;II)V

    .line 294
    return-void
.end method

.method public final registerAsDisplaySurface()V
    .locals 4

    .prologue
    .line 193
    sget-boolean v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSupportsMultipleDisplaySurfaces:Z

    if-nez v0, :cond_1

    .line 198
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 200
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This device supports only a single display surface!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_1
    return-void
.end method

.method public final release()V
    .locals 4

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mOwnsContext:Z

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mCurrentTarget:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 269
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mExternalIdShaders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mIdShaders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mOwnsSurface:Z

    if-eqz v0, :cond_2

    .line 279
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    monitor-enter v1

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->removeReferenceTo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 282
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 283
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSources:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurfaceSource:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    if-eqz v0, :cond_3

    .line 288
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->deleteFbo(I)V

    .line 290
    :cond_3
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 285
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final swapBuffers()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->surface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 251
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mFbo:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RenderTarget("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterAsDisplaySurface()V
    .locals 4

    .prologue
    .line 211
    sget-boolean v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSupportsMultipleDisplaySurfaces:Z

    if-nez v0, :cond_0

    .line 212
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mSharedResourceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mDisplaySurfaces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->mContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v1

    .line 216
    :cond_0
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
