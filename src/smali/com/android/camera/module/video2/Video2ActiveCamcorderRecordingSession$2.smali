.class final Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;
.super Ljava/lang/Object;
.source "Video2ActiveCamcorderRecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;-><init>(Lcom/android/camera/camcorder/CamcorderRecordingSession;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/UtcClock;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$600(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession$2;->this$0:Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;

    .line 112
    invoke-static {v1}, Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;->access$500(Lcom/android/camera/module/video2/Video2ActiveCamcorderRecordingSession;)Ljava/lang/Runnable;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
