.class Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;
.super Lcom/android/camera/ui/controller/PhotoVideoState;
.source "PhotoVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/PhotoVideoStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoRecording"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/PhotoVideoState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$402(Lcom/android/camera/ui/controller/PhotoVideoStatechart;Z)Z

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeOut()V

    .line 126
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$402(Lcom/android/camera/ui/controller/PhotoVideoStatechart;Z)Z

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoRecording;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$100(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeIn()V

    .line 132
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
