.class Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;
.super Ljava/lang/Object;
.source "GcaClearcutLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->sendToClearcut(Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

.field final synthetic val$event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;Lcom/google/common/logging/nano/eventprotos$CameraEvent;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    iput-object p2, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->val$event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$300(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->val$event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-virtual {v0}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->getSerializedSize()I

    move-result v0

    .line 87
    new-array v0, v0, [B

    .line 1075
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v2}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$000(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->val$event:Lcom/google/common/logging/nano/eventprotos$CameraEvent;

    invoke-virtual {v3, v1}, Lcom/google/common/logging/nano/eventprotos$CameraEvent;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 92
    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v1}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$500(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v1}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$400(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v1}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$200(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$700(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V

    .line 101
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    invoke-static {}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error logging clearcut event!"

    invoke-static {v1, v3, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v0}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$700(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 99
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl$2;->this$0:Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;

    invoke-static {v1}, Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;->access$700(Lcom/android/camera/stats/clearcut/GcaClearcutLoggerImpl;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
