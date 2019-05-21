.class final Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;
.super Ljava/lang/Object;
.source "MediaRecorderStopperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->access$100(Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->stop()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed when call MediaRecorder#stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/media/MediaRecorderStopperImpl$1;->val$futureCompletion:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
