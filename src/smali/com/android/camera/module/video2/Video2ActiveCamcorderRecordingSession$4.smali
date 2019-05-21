.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$4;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 168
    .line 1171
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$4;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$400(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    .line 1215
    iget-object v0, v0, Lcom/android/camera/module/video2/Video2ModuleUI;->appUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 168
    return-void
.end method
