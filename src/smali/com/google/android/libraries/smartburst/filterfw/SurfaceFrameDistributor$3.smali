.class Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$3;
.super Ljava/lang/Object;
.source "SurfaceFrameDistributor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor$3;->this$0:Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;->access$400(Lcom/google/android/libraries/smartburst/filterfw/SurfaceFrameDistributor;)V

    .line 161
    return-void
.end method
