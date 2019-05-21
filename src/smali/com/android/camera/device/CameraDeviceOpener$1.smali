.class final Lcom/android/camera/device/CameraDeviceOpener$1;
.super Ljava/lang/Object;
.source "CameraDeviceOpener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/CameraDeviceOpener;->start()Lcom/android/camera/device/CameraDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/device/CameraDeviceOpener;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceOpener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceOpener;->access$100(Lcom/android/camera/device/CameraDeviceOpener;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    const-string v2, "OpenCamera#"

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceOpener;->access$000(Lcom/android/camera/device/CameraDeviceOpener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceOpener;->access$200(Lcom/android/camera/device/CameraDeviceOpener;)Lcom/android/camera/device/CameraDeviceState;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-static {v1}, Lcom/android/camera/device/CameraDeviceOpener;->access$300(Lcom/android/camera/device/CameraDeviceOpener;)Lcom/android/camera/device/CameraDeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/CameraDeviceState;->addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceOpener$1;->this$0:Lcom/android/camera/device/CameraDeviceOpener;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceOpener;->access$100(Lcom/android/camera/device/CameraDeviceOpener;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 106
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
