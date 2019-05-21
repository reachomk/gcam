.class final Lcom/android/camera/module/capture/CaptureModeStartup$3;
.super Ljava/lang/Object;
.source "CaptureModeStartup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModeStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

.field private synthetic val$oneCameraCreator:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModeStartup;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->val$oneCameraCreator:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "OneCameraCreator#get"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->val$oneCameraCreator:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$400(Lcom/android/camera/module/capture/CaptureModeStartup;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$3;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$300(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 117
    return-void
.end method
