.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;
.super Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;
.source "SurfaceHolderTarget.java"


# instance fields
.field private mHasSurface:Z

.field private mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderListener:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 41
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 42
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 43
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mHasSurface:Z

    .line 46
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private declared-synchronized onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Holder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mHasSurface:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method

.method private renderCanvas(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 168
    invoke-virtual {p0, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->getTargetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    .line 169
    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 170
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 171
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 172
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 175
    return-void
.end method

.method private renderGL(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->forSurfaceHolder(Landroid/view/SurfaceHolder;)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->registerAsDisplaySurface()V

    .line 148
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->setupShader(Lcom/google/android/libraries/smartburst/filterfw/ImageShader;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 151
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    .line 155
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 156
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->swapBuffers()V

    .line 157
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 99
    const/16 v0, 0x12d

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 100
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;->getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "image"

    .line 101
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public onBindToView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 70
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not get SurfaceHolder from SurfaceView "

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

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 77
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must be a SurfaceView!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized onClose()V
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->unregisterAsDisplaySurface()V

    .line 181
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->release()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroySurface()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->release()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mHasSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;->connectViewInputs(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V

    .line 108
    return-void
.end method

.method protected declared-synchronized onOpen()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mHasSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onPrepare()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->isOpenGLSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onProcess()V
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 127
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->isOpenGLSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->renderGL(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 135
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->renderCanvas(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set SurfaceHolder while running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void
.end method
