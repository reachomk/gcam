.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->onSnapshotButtonClicked()V
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
        "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CamcorderSnapshot is not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->setSnapshotButtonClickEnabled(Z)V

    .line 197
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 181
    check-cast p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;

    .line 1184
    invoke-static {}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$800()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->filePath:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CamcorderSnapshot is available: file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$700(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$5;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->setSnapshotButtonClickEnabled(Z)V

    .line 181
    return-void
.end method
