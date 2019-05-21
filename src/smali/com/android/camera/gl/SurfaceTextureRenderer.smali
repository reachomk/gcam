.class public final Lcom/android/camera/gl/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile drawPending:Z

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private final eglHandler:Landroid/os/Handler;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final frameDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;

.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field private final renderLock:Ljava/lang/Object;

.field private final renderTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "SurfTexRenderer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/gl/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 164
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/gl/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->drawPending:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->renderLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/android/camera/gl/SurfaceTextureRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/gl/SurfaceTextureRenderer$1;-><init>(Lcom/android/camera/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->renderTask:Ljava/lang/Runnable;

    .line 53
    iput-object p2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->frameDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;

    .line 1098
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/gl/SurfaceTextureRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/gl/SurfaceTextureRenderer$3;-><init>(Lcom/android/camera/gl/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1133
    invoke-direct {p0}, Lcom/android/camera/gl/SurfaceTextureRenderer;->waitDone()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->renderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$1000(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/android/camera/gl/SurfaceTextureRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->gl:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->gl:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/gl/SurfaceTextureRenderer;)Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->frameDrawer:Lcom/android/camera/gl/SurfaceTextureRenderer$FrameDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->egl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->egl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/gl/SurfaceTextureRenderer;Z)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->drawPending:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/gl/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/gl/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/gl/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 185
    sget-object v2, Lcom/android/camera/gl/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    aget v10, v5, v4

    .line 190
    if-gtz v10, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 195
    sget-object v8, Lcom/android/camera/gl/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private final waitDone()V
    .locals 3

    .prologue
    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 138
    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/gl/SurfaceTextureRenderer$4;

    invoke-direct {v2, v1}, Lcom/android/camera/gl/SurfaceTextureRenderer$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 151
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/camera/gl/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v2, "waitDone() interrupted"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final draw(Z)V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->drawPending:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->drawPending:Z

    .line 94
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

.method public final release()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/gl/SurfaceTextureRenderer;->eglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/gl/SurfaceTextureRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/gl/SurfaceTextureRenderer$2;-><init>(Lcom/android/camera/gl/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
