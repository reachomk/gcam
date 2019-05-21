.class Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "LensBlurStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/LensBlurStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Capturing"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/LensBlurStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/LensBlurStatechart;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/LensBlurStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([Z)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/android/camera/ui/controller/LensBlurStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter capturing state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/LensBlurStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/LensBlurStatechart;->access$100(Lcom/android/camera/ui/controller/LensBlurStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hide()V

    .line 41
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/android/camera/ui/controller/LensBlurStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit capturing state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;->this$0:Lcom/android/camera/ui/controller/LensBlurStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/LensBlurStatechart;->access$100(Lcom/android/camera/ui/controller/LensBlurStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->show()V

    .line 47
    return-void
.end method

.method public onStopCapturing()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
