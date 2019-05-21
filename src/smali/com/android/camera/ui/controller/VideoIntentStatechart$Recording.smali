.class Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;
.super Lcom/android/camera/ui/controller/VideoIntentState;
.source "VideoIntentStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/VideoIntentStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Recording"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/VideoIntentStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/VideoIntentStatechart;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoIntentState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/VideoIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeOut()V

    .line 52
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoIntentStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/VideoIntentStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeIn()V

    .line 57
    return-void
.end method

.method public onRecordingStopFailed()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onVideoReadyForReview()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
