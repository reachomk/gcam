.class Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;
.super Ljava/lang/Object;
.source "SurfaceTextureStreamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->access$000(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->release()V

    .line 117
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->access$100(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;->access$200(Lcom/google/android/libraries/smartburst/filterfw/SurfaceTextureStreamer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 119
    return-void
.end method
