.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$200(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->access$502(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;Z)Z

    .line 296
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl$2;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorImpl;->update()V

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
