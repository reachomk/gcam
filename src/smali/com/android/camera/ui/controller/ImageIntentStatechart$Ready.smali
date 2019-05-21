.class Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "ImageIntentStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/ImageIntentStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ready"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/ImageIntentStatechart;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([I)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->access$000(Lcom/android/camera/ui/controller/ImageIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->TIMER:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->access$000(Lcom/android/camera/ui/controller/ImageIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->GRID_LINES:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->access$000(Lcom/android/camera/ui/controller/ImageIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->enableAutoFlashOption()V

    .line 35
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->access$000(Lcom/android/camera/ui/controller/ImageIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->TIMER:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/controller/ImageIntentStatechart$Ready;->this$0:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->access$000(Lcom/android/camera/ui/controller/ImageIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->GRID_LINES:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 41
    return-void
.end method

.method public onImageReadyForReview()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
