.class Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoTorchStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/VideoTorchStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Off"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$500(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->OFF:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectFlashOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V

    .line 79
    return-void
.end method

.method public setOn()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$100(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
