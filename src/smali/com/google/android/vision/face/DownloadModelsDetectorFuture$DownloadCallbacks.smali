.class Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;
.super Ljava/lang/Object;
.source "DownloadModelsDetectorFuture.java"

# interfaces
.implements Lcom/google/android/vision/face/ModelManager$ModelManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vision/face/DownloadModelsDetectorFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadCallbacks"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;


# virtual methods
.method public onModelDownloadProgressUpdate(I)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onModelInstallationFailure(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 5018
    const/4 v1, 0x0

    .line 129
    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$602(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;Z)Z

    .line 131
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 6018
    const/4 v0, 0x0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    invoke-static {v0}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$100(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;)Lcom/google/android/vision/face/DetectorFactory$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    invoke-static {v0, v3}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$102(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;Lcom/google/android/vision/face/DetectorFactory$Callback;)Lcom/google/android/vision/face/DetectorFactory$Callback;

    .line 137
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onModelInstallationSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 1018
    const/4 v1, 0x0

    .line 115
    monitor-enter v5

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    new-instance v2, Lcom/google/android/vision/face/Detector;

    iget-object v3, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 2018
    const/4 v3, 0x0

    .line 117
    iget-object v4, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 3018
    const/4 v4, 0x0

    .line 117
    invoke-direct {v2, v3, v4}, Lcom/google/android/vision/face/Detector;-><init>(Landroid/content/Context;Lcom/google/android/vision/face/Detector$Settings;)V

    invoke-static {v0, v2}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$302(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;Lcom/google/android/vision/face/Detector;)Lcom/google/android/vision/face/Detector;

    .line 118
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$602(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;Z)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    .line 4018
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    invoke-static {v0}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$100(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;)Lcom/google/android/vision/face/DetectorFactory$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/vision/face/DownloadModelsDetectorFuture$DownloadCallbacks;->this$0:Lcom/google/android/vision/face/DownloadModelsDetectorFuture;

    invoke-static {v0, v5}, Lcom/google/android/vision/face/DownloadModelsDetectorFuture;->access$102(Lcom/google/android/vision/face/DownloadModelsDetectorFuture;Lcom/google/android/vision/face/DetectorFactory$Callback;)Lcom/google/android/vision/face/DetectorFactory$Callback;

    .line 125
    :cond_0
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
