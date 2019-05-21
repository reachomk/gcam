.class final Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1$1;
.super Ljava/lang/Object;
.source "MediaRecorderPreparerImpl.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;->apply(Ljava/lang/Long;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/4 v0, 0x1

    .line 282
    .line 283
    if-ne p2, v0, :cond_1

    .line 284
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MEDIA_RECORDER_ERROR_UNKNOWN: extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1$1;->this$1:Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;

    iget-object v0, v0, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl$1;->this$0:Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->access$1400(Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;)Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDeviceCallback;->onMediaRecorderError()V

    .line 312
    :cond_0
    return-void

    .line 285
    :cond_1
    const/16 v1, 0x64

    if-ne p2, v1, :cond_2

    .line 286
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MEDIA_ERROR_SERVER_DIED: extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    const/16 v1, -0x3ef

    if-ne p3, v1, :cond_3

    .line 303
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MEDIA_ERROR_MALFORMED: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :cond_3
    invoke-static {}, Lcom/android/camera/camcorder/media/MediaRecorderPreparerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MediaRecorder onError: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
