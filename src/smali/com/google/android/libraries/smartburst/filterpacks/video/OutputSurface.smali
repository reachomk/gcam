.class Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OutputSurface"

.field private static final VERBOSE:Z


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->setup()V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 63
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->eglSetup(II)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->makeCurrent()V

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->setup()V

    .line 69
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 265
    const-string v0, "OutputSurface"

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    return-void
.end method

.method private eglSetup(II)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/16 v0, 0xb

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 129
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 130
    new-array v5, v4, [I

    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    .line 139
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, v3, v7

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 141
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v7

    aput p1, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, v1

    aput p2, v0, v8

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 152
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v3, v7

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 153
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_3

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    return-void

    .line 121
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data

    .line 135
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->createSourceTexture()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->initialize()V

    .line 94
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 107
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 108
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 220
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameAvailable:Z

    .line 230
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 234
    return-void
.end method

.method public drawImage()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->updateTransformFrom(Landroid/graphics/SurfaceTexture;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->drawFrame()V

    .line 242
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    const-string v0, "before makeCurrent"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameAvailable:Z

    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 255
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 178
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 179
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 180
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 181
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 182
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    .line 183
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 184
    iput-object v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 185
    return-void
.end method
