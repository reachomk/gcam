.class final Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "FocusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/autofocus/FocusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$000(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$202(Lcom/android/camera/one/v2/autofocus/FocusMonitor;J)J

    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$102(Lcom/android/camera/one/v2/autofocus/FocusMonitor;Z)Z

    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$300(Lcom/android/camera/one/v2/autofocus/FocusMonitor;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 73
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
