.class final Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;
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
    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$000(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$100(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$200(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 58
    :cond_0
    monitor-exit v1

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;->this$0:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->access$300(Lcom/android/camera/one/v2/autofocus/FocusMonitor;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 61
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
