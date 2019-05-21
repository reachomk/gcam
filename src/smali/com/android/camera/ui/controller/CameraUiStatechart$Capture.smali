.class Lcom/android/camera/ui/controller/CameraUiStatechart$Capture;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraUiStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Capture"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraUiStatechart;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Capture;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture state enter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Capture;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$100(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->activate()V

    .line 58
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture state exit"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiStatechart$Capture;->this$0:Lcom/android/camera/ui/controller/CameraUiStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraUiStatechart;->access$100(Lcom/android/camera/ui/controller/CameraUiStatechart;)Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;->deactivate()V

    .line 64
    return-void
.end method

.method public onFilmstripOpened()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFilmstripOpened()V

    .line 70
    return-void
.end method
