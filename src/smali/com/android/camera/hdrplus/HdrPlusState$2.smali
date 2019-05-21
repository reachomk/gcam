.class final Lcom/android/camera/hdrplus/HdrPlusState$2;
.super Lcom/google/googlex/gcam/SimpleCallback;
.source "HdrPlusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusState;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$2;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusState$2;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v0, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusState$2;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusState$2;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v2, v2, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HDR+ is idle, but we have in-flight sessions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
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
