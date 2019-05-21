.class Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;
.super Lcom/android/camera/ui/controller/PhotoVideoState;
.source "PhotoVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/PhotoVideoStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Photo"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/PhotoVideoState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter Photo state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->enableAutoFlashOption()V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$200(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->setCoverState(Z)V

    .line 49
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit Photo state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$Photo;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->disableAutoFlashOption()V

    .line 55
    return-void
.end method

.method public setVideoMode()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public togglePhotoVideoMode()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
