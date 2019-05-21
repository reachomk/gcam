.class final Lcom/android/camera/module/video2/Video2Module$6;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPauseButtonClicked()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onPauseButtonClicked()V

    .line 740
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResumeButtonClicked()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onResumeButtonClicked()V

    .line 749
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShutterButtonClick()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onShutterButtonClicked()V

    .line 775
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public final onShutterButtonLongPressRelease()V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public final onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public final onSnapshotButtonClicked()V
    .locals 3

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onSnapshotButtonClicked()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$6;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$000(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    const v2, 0x7f0a010e

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2ModuleUI;->announceForAccessibility(I)V

    .line 760
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
