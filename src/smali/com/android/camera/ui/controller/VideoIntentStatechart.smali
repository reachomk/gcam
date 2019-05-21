.class public Lcom/android/camera/ui/controller/VideoIntentStatechart;
.super Lcom/android/camera/ui/controller/VideoIntentState;
.source "VideoIntentStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/VideoIntentStatechart$Review;,
        Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;,
        Lcom/android/camera/ui/controller/VideoIntentStatechart$Ready;
    }
.end annotation


# instance fields
.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoIntentState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/VideoIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->HDR_PLUS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->TIMER:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->disableAutoFlashOption()V

    .line 27
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    return-void
.end method
