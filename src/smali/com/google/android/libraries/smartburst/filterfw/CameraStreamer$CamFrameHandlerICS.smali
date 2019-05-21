.class Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;
.super Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;
.source "CameraStreamer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CamFrameHandlerICS"
.end annotation


# static fields
.field protected static final mCopyShaderSource:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"


# instance fields
.field private mCameraTransform:[F

.field protected mClientRenderTargets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            "Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected mCopyShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field protected mOnCameraFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field protected mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

.field protected mTargetSurfaceTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V

    .line 291
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCameraTransform:[F

    .line 294
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 295
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mClientRenderTargets:Ljava/util/HashMap;

    .line 306
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCopyShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 485
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOnCameraFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V

    return-void
.end method


# virtual methods
.method protected createClientShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createClientTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->newExternalTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    return-object v0
.end method

.method protected distributeFrames()V
    .locals 6

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->getCopyShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->updateTransform(Lcom/google/android/libraries/smartburst/filterfw/ImageShader;)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->getCopyShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->updateShaderTargetRect(Lcom/google/android/libraries/smartburst/filterfw/ImageShader;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->renderTargetFor(Landroid/graphics/SurfaceTexture;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->getCopyShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutWidth:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutHeight:I

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 406
    const-string v2, "distribute frames"

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->swapBuffers()V

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method

.method protected getCopyShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCopyShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCopyShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCopyShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    return-object v0
.end method

.method public declared-synchronized grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)V
    .locals 6

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->textureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v1

    .line 353
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->shaderForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v2

    .line 354
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->surfaceTextureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 355
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to grab camera frame from unknown thread: "

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 362
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutHeight:I

    invoke-interface {p2, v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;->scale(II)[I

    move-result-object v0

    .line 363
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->resize([I)V

    .line 365
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    .line 364
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 369
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 370
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    monitor-exit p0

    return-void
.end method

.method protected onCleanupContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->onCleanupContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 478
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 479
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 481
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    return-void
.end method

.method public declared-synchronized onRegisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->clientsForContext(Ljavax/microedition/khronos/egl/EGLContext;)Ljava/util/Set;

    move-result-object v0

    .line 332
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->textureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 333
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->shaderForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 334
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->surfaceTextureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 337
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUpdateCameraOrientation(I)V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->onUpdateCameraOrientation(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->access$100(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 323
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->updateSurfaceTextureSizes()V

    .line 324
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->release()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_1
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected renderTargetFor(Landroid/graphics/SurfaceTexture;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mClientRenderTargets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 413
    if-nez v0, :cond_0

    .line 414
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->forSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mClientRenderTargets:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    return-object v0
.end method

.method protected setupPreviewTexture(Landroid/hardware/Camera;)V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->newExternalTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOnCameraFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 434
    :cond_1
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    new-instance v1, Ljava/lang/RuntimeException;

    .line 430
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not bind camera surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized setupServerFrame()V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->access$100(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->setupPreviewTexture(Landroid/hardware/Camera;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected surfaceTextureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 445
    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->textureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    .line 448
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 449
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 450
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    return-object v0
.end method

.method public declared-synchronized updateServerFrame()V
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->distributeFrames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateShaderTargetRect(Lcom/google/android/libraries/smartburst/filterfw/ImageShader;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 457
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->access$200(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;->access$300(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v2, v3, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetRect(FFFF)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p1, v3, v3, v2, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetRect(FFFF)V

    goto :goto_0
.end method

.method protected declared-synchronized updateSurfaceTextureSizes()V
    .locals 4

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mTargetSurfaceTextures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 466
    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mOutHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 468
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected updateTransform(Lcom/google/android/libraries/smartburst/filterfw/ImageShader;)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCameraTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 472
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mCameraTransform:[F

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceTransform([F)V

    .line 473
    return-void
.end method
