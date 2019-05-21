.class Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;
.super Ljava/lang/Object;
.source "GcaClearcutLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$000(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$100(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Disconnecting Clearcut GoogleApiClient..."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$200(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$200(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$1;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$200(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 48
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
