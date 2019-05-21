.class Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;
.super Ljava/lang/Object;
.source "MediaStreamer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$SurfaceTextureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFrameSurface:Landroid/view/Surface;

.field private mFrameTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->newExternalTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 187
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 188
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameSurface:Landroid/view/Surface;

    .line 189
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;->access$300(Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 190
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 191
    return-object v0
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MediaStreamer$3;->mFrameTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->release()V

    .line 199
    return-void
.end method
