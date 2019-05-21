.class public Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
.super Ljava/lang/Object;
.source "GLSurface.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

.field private mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

.field private mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mClosed:Z

    .line 213
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    .line 214
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    .line 215
    return-void
.end method

.method static synthetic access$000(Landroid/view/Surface;Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->newInstanceForInputOnly(Landroid/view/Surface;Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->newInstanceForInputOutput(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaFormat;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->newInstanceForOutputOnly(Landroid/media/MediaFormat;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$1;)V

    return-object v0
.end method

.method private static newInstanceForInputOnly(Landroid/view/Surface;Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;-><init>(Landroid/view/Surface;Z)V

    .line 171
    new-instance v1, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;-><init>(Z)V

    .line 172
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->initialize()V

    .line 173
    new-instance v2, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;)V

    .line 174
    iput-object v1, v2, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    .line 175
    return-object v2
.end method

.method private static newInstanceForInputOutput(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;-><init>(Landroid/view/Surface;Z)V

    .line 201
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->makeCurrent()V

    .line 202
    new-instance v1, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;-><init>()V

    .line 203
    new-instance v2, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;)V

    return-object v2
.end method

.method private static newInstanceForOutputOnly(Landroid/media/MediaFormat;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 3

    .prologue
    .line 185
    const-string v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 186
    const-string v1, "height"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 187
    new-instance v2, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;-><init>(II)V

    .line 188
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;)V

    return-object v0
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->awaitNewImage()V

    .line 238
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mClosed:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mClosed:Z

    .line 330
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->release()V

    .line 332
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->release()V

    .line 337
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    goto :goto_0
.end method

.method public drawImage()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->drawFrame()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->drawImage()V

    goto :goto_0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public makeCurrent()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->makeCurrent()V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->makeCurrent()V

    goto :goto_0
.end method

.method public setAffineTransform(IIII)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->setAffineTransform(IIII)V

    .line 299
    return-void
.end method

.method public setPresentationTimeNs(J)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->setPresentationTime(J)V

    .line 271
    return-void
.end method

.method public setSourceTexture(I)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not configured for encoder only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mTextureRender:Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterpacks/video/TextureRender;->setSourceTexture(I)V

    .line 250
    return-void
.end method

.method public surfaceForDecoderOutput()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mOutputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public swapBuffers()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->mInputSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/InputSurface;->swapBuffers()Z

    .line 281
    return-void
.end method
