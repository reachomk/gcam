.class Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;
.super Ljava/lang/Object;
.source "CameraStreamer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->onRegisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;Ljavax/microedition/khronos/egl/EGLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;

.field final synthetic val$clientTargets:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;->this$1:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;->val$clientTargets:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;->this$1:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    .line 341
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;->val$clientTargets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 342
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS$1;->this$1:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;

    iget-object v4, v4, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandlerICS;->this$0:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;

    invoke-interface {v0, v4, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;J)V

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method
