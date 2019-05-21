.class final Lcom/android/camera/module/capture/CaptureModeUiStartup$3;
.super Ljava/lang/Object;
.source "CaptureModeUiStartup.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModeUiStartup;->initializeOnce()V
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
        "Lcom/android/camera/one/OneCamera;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

.field private synthetic val$timeToCoverHidden:Lcom/android/camera/debug/performance/Metric;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModeUiStartup;Lcom/android/camera/debug/performance/Metric;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->val$timeToCoverHidden:Lcom/android/camera/debug/performance/Metric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to start OneCamera!"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 150
    .line 1153
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "HideModeCover"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ui/views/CameraUi;->viewfinderCover:Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 2092
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->setVisibility(I)V

    .line 1155
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "futureOneCamera in post cover hidden"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1157
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$500(Lcom/android/camera/module/capture/CaptureModeUiStartup;)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->val$timeToCoverHidden:Lcom/android/camera/debug/performance/Metric;

    invoke-interface {v0}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$600(Lcom/android/camera/module/capture/CaptureModeUiStartup;)V

    .line 150
    return-void
.end method
