.class final Lcom/android/camera/module/capture/CaptureModeUiStartup$2;
.super Ljava/lang/Object;
.source "CaptureModeUiStartup.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModeUiStartup;->initializeOnce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

.field private synthetic val$timeToActivityControllerCreateBegin:Lcom/android/camera/debug/performance/Metric;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModeUiStartup;Lcom/android/camera/debug/performance/Metric;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->val$timeToActivityControllerCreateBegin:Lcom/android/camera/debug/performance/Metric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->val$timeToActivityControllerCreateBegin:Lcom/android/camera/debug/performance/Metric;

    invoke-interface {v0}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 142
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "CameraActivityController#create"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$200(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeUiStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeUiStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeUiStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeUiStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 147
    return-void
.end method
