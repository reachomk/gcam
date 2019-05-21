.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ImageDistributorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

.field private synthetic val$imageIdSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->val$imageIdSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->afterStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$200(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$300(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->update()V

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onBufferLost(Landroid/view/Surface;J)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$400(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onBufferLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->val$imageIdSequence:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->update(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$100(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->update(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->update()V

    .line 139
    return-void
.end method
