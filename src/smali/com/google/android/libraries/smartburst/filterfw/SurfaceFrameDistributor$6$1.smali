.class Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6$1;
.super Ljava/lang/Object;
.source "SurfaceFrameDistributor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6$1;->this$1:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6$1;->this$1:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$6;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->access$100(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    .line 260
    return-void
.end method
