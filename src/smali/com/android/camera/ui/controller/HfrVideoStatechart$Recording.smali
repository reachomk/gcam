.class Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "HfrVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/HfrVideoStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Recording"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/HfrVideoStatechart;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([S)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/HfrVideoStatechart;->access$002(Lcom/android/camera/ui/controller/HfrVideoStatechart;Z)Z

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/HfrVideoStatechart;->access$100(Lcom/android/camera/ui/controller/HfrVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeOut()V

    .line 43
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/HfrVideoStatechart;->access$002(Lcom/android/camera/ui/controller/HfrVideoStatechart;Z)Z

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/HfrVideoStatechart$Recording;->this$0:Lcom/android/camera/ui/controller/HfrVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/HfrVideoStatechart;->access$100(Lcom/android/camera/ui/controller/HfrVideoStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->fadeIn()V

    .line 49
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
